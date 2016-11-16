.class public final Lcom/android/server/BatteryService;
.super Lcom/android/server/SystemService;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$BatteryListener;,
        Lcom/android/server/BatteryService$BinderService;,
        Lcom/android/server/BatteryService$Led;,
        Lcom/android/server/BatteryService$LocalService;,
        Lcom/android/server/BatteryService$Shell;
    }
.end annotation


# static fields
.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field private static final BATTERY_SCALE:I = 0x64

.field private static final DEBUG:Z = false

.field private static final DUMPSYS_ARGS:[Ljava/lang/String;

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryLevelCritical:Z

.field private mBatteryLevelLow:Z

.field private mBatteryProps:Landroid/os/BatteryProperties;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mBinderService:Lcom/android/server/BatteryService$BinderService;

.field private final mContext:Landroid/content/Context;

.field private mCriticalBatteryLevel:I

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mInvalidCharger:I

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private final mLastBatteryProps:Landroid/os/BatteryProperties;

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastChargeCounter:I

.field private mLastInvalidCharger:I

.field private mLastMaxChargingCurrent:I

.field private mLastMaxChargingVoltage:I

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

.method static synthetic -wrap1(Lcom/android/server/BatteryService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/BatteryService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

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
    .line 91
    const-class v0, Lcom/android/server/BatteryService;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@8
    .line 101
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
    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 151
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 113
    new-instance v1, Ljava/lang/Object;

    #@5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@a
    .line 116
    new-instance v1, Landroid/os/BatteryProperties;

    #@c
    invoke-direct {v1}, Landroid/os/BatteryProperties;-><init>()V

    #@f
    iput-object v1, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@11
    .line 137
    const/4 v1, -0x1

    #@12
    iput v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@14
    .line 148
    const/4 v1, 0x0

    #@15
    iput-boolean v1, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@17
    .line 153
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@19
    .line 154
    new-instance v1, Landroid/os/Handler;

    #@1b
    const/4 v2, 0x1

    #@1c
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Z)V

    #@1f
    iput-object v1, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@21
    .line 155
    new-instance v2, Lcom/android/server/BatteryService$Led;

    #@23
    const-class v1, Lcom/android/server/lights/LightsManager;

    #@25
    invoke-virtual {p0, v1}, Lcom/android/server/BatteryService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Lcom/android/server/lights/LightsManager;

    #@2b
    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/BatteryService$Led;-><init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V

    #@2e
    iput-object v2, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    #@30
    .line 156
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    #@33
    move-result-object v1

    #@34
    iput-object v1, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    #@36
    .line 158
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@38
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@3b
    move-result-object v1

    #@3c
    .line 159
    const v2, 0x10e0054

    #@3f
    .line 158
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@42
    move-result v1

    #@43
    iput v1, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@45
    .line 160
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@47
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@4a
    move-result-object v1

    #@4b
    .line 161
    const v2, 0x10e0056

    #@4e
    .line 160
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@51
    move-result v1

    #@52
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@54
    .line 162
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@56
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@58
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5b
    move-result-object v2

    #@5c
    .line 163
    const v3, 0x10e0057

    #@5f
    .line 162
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@62
    move-result v2

    #@63
    add-int/2addr v1, v2

    #@64
    iput v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@66
    .line 164
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@68
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6b
    move-result-object v1

    #@6c
    .line 165
    const v2, 0x10e0055

    #@6f
    .line 164
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@72
    move-result v1

    #@73
    iput v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    #@75
    .line 168
    new-instance v1, Ljava/io/File;

    #@77
    const-string/jumbo v2, "/sys/devices/virtual/switch/invalid_charger/state"

    #@7a
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@7d
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    #@80
    move-result v1

    #@81
    if-eqz v1, :cond_0

    #@83
    .line 169
    new-instance v0, Lcom/android/server/BatteryService$1;

    #@85
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    #@88
    .line 181
    .local v0, "invalidChargerObserver":Landroid/os/UEventObserver;
    const-string/jumbo v1, "DEVPATH=/devices/virtual/switch/invalid_charger"

    #@8b
    .line 180
    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    #@8e
    .line 150
    .end local v0    # "invalidChargerObserver":Landroid/os/UEventObserver;
    :cond_0
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 657
    const-string/jumbo v0, "Battery service (battery) commands:"

    #@3
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 658
    const-string/jumbo v0, "  help"

    #@9
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 659
    const-string/jumbo v0, "    Print this help text."

    #@f
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12
    .line 660
    const-string/jumbo v0, "  set [ac|usb|wireless|status|level|invalid] <value>"

    #@15
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 661
    const-string/jumbo v0, "    Force a battery property value, freezing battery state."

    #@1b
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 662
    const-string/jumbo v0, "  unplug"

    #@21
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@24
    .line 663
    const-string/jumbo v0, "    Force battery unplugged, freezing battery state."

    #@27
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2a
    .line 664
    const-string/jumbo v0, "  reset"

    #@2d
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@30
    .line 665
    const-string/jumbo v0, "    Unfreeze battery state, returning to current hardware values."

    #@33
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@36
    .line 656
    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 770
    iget-object v7, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 771
    if-eqz p3, :cond_0

    #@5
    :try_start_0
    array-length v1, p3

    #@6
    if-nez v1, :cond_2

    #@8
    .line 772
    :cond_0
    const-string/jumbo v1, "Current Battery Service state:"

    #@b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@e
    .line 773
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@10
    if-eqz v1, :cond_1

    #@12
    .line 774
    const-string/jumbo v1, "  (UPDATES STOPPED -- use \'reset\' to restart)"

    #@15
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@18
    .line 776
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "  AC powered: "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@26
    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@33
    .line 777
    new-instance v1, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v2, "  USB powered: "

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@41
    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4e
    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    #@50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@53
    const-string/jumbo v2, "  Wireless powered: "

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@5c
    iget-boolean v2, v2, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@5e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@61
    move-result-object v1

    #@62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v1

    #@66
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@69
    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v2, "  Max charging current: "

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@77
    iget v2, v2, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v1

    #@81
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@84
    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v2, "  Max charging voltage: "

    #@8c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v1

    #@90
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@92
    iget v2, v2, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@9f
    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v2, "  Charge counter: "

    #@a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@ad
    iget v2, v2, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b6
    move-result-object v1

    #@b7
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@ba
    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    #@bc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@bf
    const-string/jumbo v2, "  status: "

    #@c2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v1

    #@c6
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@c8
    iget v2, v2, Landroid/os/BatteryProperties;->batteryStatus:I

    #@ca
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v1

    #@ce
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d1
    move-result-object v1

    #@d2
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@d5
    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    const-string/jumbo v2, "  health: "

    #@dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v1

    #@e1
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@e3
    iget v2, v2, Landroid/os/BatteryProperties;->batteryHealth:I

    #@e5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v1

    #@ed
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 784
    new-instance v1, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v2, "  present: "

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@fe
    iget-boolean v2, v2, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@103
    move-result-object v1

    #@104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@107
    move-result-object v1

    #@108
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@10b
    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v2, "  level: "

    #@113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v1

    #@117
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@119
    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    #@11b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v1

    #@11f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@126
    .line 786
    const-string/jumbo v1, "  scale: 100"

    #@129
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@12c
    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    #@12e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@131
    const-string/jumbo v2, "  voltage: "

    #@134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@137
    move-result-object v1

    #@138
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@13a
    iget v2, v2, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@13c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13f
    move-result-object v1

    #@140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@143
    move-result-object v1

    #@144
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@147
    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    #@149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14c
    const-string/jumbo v2, "  temperature: "

    #@14f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@152
    move-result-object v1

    #@153
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@155
    iget v2, v2, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@157
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v1

    #@15b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15e
    move-result-object v1

    #@15f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@162
    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    #@164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@167
    const-string/jumbo v2, "  technology: "

    #@16a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v1

    #@16e
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@170
    iget-object v2, v2, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v1

    #@176
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@179
    move-result-object v1

    #@17a
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17d
    :goto_0
    monitor-exit v7

    #@17e
    .line 769
    return-void

    #@17f
    .line 771
    :cond_2
    :try_start_1
    const-string/jumbo v1, "-a"

    #@182
    const/4 v2, 0x0

    #@183
    aget-object v2, p3, v2

    #@185
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@188
    move-result v1

    #@189
    if-nez v1, :cond_0

    #@18b
    .line 791
    new-instance v0, Lcom/android/server/BatteryService$Shell;

    #@18d
    invoke-direct {v0, p0}, Lcom/android/server/BatteryService$Shell;-><init>(Lcom/android/server/BatteryService;)V

    #@190
    .line 792
    .local v0, "shell":Lcom/android/server/BatteryService$Shell;
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    #@192
    new-instance v6, Landroid/os/ResultReceiver;

    #@194
    const/4 v2, 0x0

    #@195
    invoke-direct {v6, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    #@198
    const/4 v2, 0x0

    #@199
    const/4 v4, 0x0

    #@19a
    move-object v3, p1

    #@19b
    move-object v5, p3

    #@19c
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/BatteryService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ResultReceiver;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19f
    goto :goto_0

    #@1a0
    .line 770
    .end local v0    # "shell":Lcom/android/server/BatteryService$Shell;
    :catchall_0
    move-exception v1

    #@1a1
    monitor-exit v7

    #@1a2
    throw v1
.end method

.method private getIconLocked(I)I
    .locals 4
    .param p1, "level"    # I

    #@0
    .prologue
    const v3, 0x10806e6

    #@3
    const v2, 0x10806d8

    #@6
    .line 626
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@8
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@a
    const/4 v1, 0x2

    #@b
    if-ne v0, v1, :cond_0

    #@d
    .line 627
    return v3

    #@e
    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@10
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@12
    const/4 v1, 0x3

    #@13
    if-ne v0, v1, :cond_1

    #@15
    .line 629
    return v2

    #@16
    .line 630
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@18
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@1a
    const/4 v1, 0x4

    #@1b
    if-eq v0, v1, :cond_2

    #@1d
    .line 631
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1f
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@21
    const/4 v1, 0x5

    #@22
    if-ne v0, v1, :cond_4

    #@24
    .line 632
    :cond_2
    const/4 v0, 0x7

    #@25
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->isPoweredLocked(I)Z

    #@28
    move-result v0

    #@29
    if-eqz v0, :cond_3

    #@2b
    .line 633
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2d
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@2f
    const/16 v1, 0x64

    #@31
    if-lt v0, v1, :cond_3

    #@33
    .line 634
    return v3

    #@34
    .line 636
    :cond_3
    return v2

    #@35
    .line 639
    :cond_4
    const v0, 0x10806f4

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
    .line 243
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@4
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 244
    return v1

    #@9
    .line 246
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
    .line 247
    return v1

    #@14
    .line 249
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
    .line 250
    return v1

    #@1f
    .line 252
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
    .line 253
    return v1

    #@2a
    .line 255
    :cond_3
    return v2
.end method

.method private logBatteryStatsLocked()V
    .locals 12

    #@0
    .prologue
    .line 561
    const-string/jumbo v8, "batterystats"

    #@3
    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 562
    .local v0, "batteryInfoService":Landroid/os/IBinder;
    if-nez v0, :cond_0

    #@9
    return-void

    #@a
    .line 564
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
    .line 565
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
    .line 567
    const/4 v2, 0x0

    #@21
    .line 568
    .local v2, "dumpFile":Ljava/io/File;
    const/4 v4, 0x0

    #@22
    .line 571
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
    .line 572
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
    .line 573
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
    .line 574
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    #@3b
    .line 577
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
    .line 584
    if-eqz v5, :cond_1

    #@44
    .line 586
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    #@47
    .line 591
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
    .line 560
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :cond_3
    :goto_2
    return-void

    #@52
    .line 565
    :cond_4
    return-void

    #@53
    .line 587
    .restart local v3    # "dumpFile":Ljava/io/File;
    .restart local v5    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    #@54
    .line 588
    .local v7, "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@56
    const-string/jumbo v9, "failed to close dumpsys output stream"

    #@59
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5c
    goto :goto_0

    #@5d
    .line 592
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
    .line 593
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@6e
    move-result-object v10

    #@6f
    .line 592
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
    .line 580
    .end local v3    # "dumpFile":Ljava/io/File;
    .end local v5    # "dumpStream":Ljava/io/FileOutputStream;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .local v4, "dumpStream":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    #@7c
    .line 581
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
    .line 584
    if-eqz v4, :cond_6

    #@86
    .line 586
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    #@89
    .line 591
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
    .line 592
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
    .line 593
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@a2
    move-result-object v10

    #@a3
    .line 592
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
    .line 587
    :catch_2
    move-exception v7

    #@b0
    .line 588
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@b2
    const-string/jumbo v9, "failed to close dumpsys output stream"

    #@b5
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@b8
    goto :goto_4

    #@b9
    .line 578
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "dumpFile":Ljava/io/File;
    .restart local v4    # "dumpStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v6

    #@ba
    .line 579
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
    .line 584
    if-eqz v4, :cond_7

    #@c4
    .line 586
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    #@c7
    .line 591
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
    .line 592
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
    .line 593
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@e0
    move-result-object v10

    #@e1
    .line 592
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
    .line 587
    :catch_4
    move-exception v7

    #@ef
    .line 588
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@f1
    const-string/jumbo v9, "failed to close dumpsys output stream"

    #@f4
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@f7
    goto :goto_6

    #@f8
    .line 582
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    #@f9
    .line 584
    :goto_7
    if-eqz v4, :cond_8

    #@fb
    .line 586
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    #@fe
    .line 591
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
    .line 582
    :cond_9
    :goto_9
    throw v8

    #@107
    .line 587
    :catch_5
    move-exception v7

    #@108
    .line 588
    .restart local v7    # "e":Ljava/io/IOException;
    sget-object v9, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    #@10a
    const-string/jumbo v10, "failed to close dumpsys output stream"

    #@10d
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@110
    goto :goto_8

    #@111
    .line 592
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
    .line 593
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    #@122
    move-result-object v11

    #@123
    .line 592
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
    .line 582
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
    .line 578
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
    .line 580
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
    .line 599
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v0

    #@6
    .line 601
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v7, "battery_discharge_threshold"

    #@9
    .line 600
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    .line 603
    .local v2, "dischargeThresholdString":Ljava/lang/String;
    const-string/jumbo v7, "battery_discharge_duration_threshold"

    #@10
    .line 602
    invoke-static {v0, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@13
    move-result-object v3

    #@14
    .line 605
    .local v3, "durationThresholdString":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 607
    :try_start_0
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    #@1b
    move-result-wide v4

    #@1c
    .line 608
    .local v4, "durationThreshold":J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@1f
    move-result v1

    #@20
    .line 609
    .local v1, "dischargeThreshold":I
    cmp-long v7, p1, v4

    #@22
    if-gtz v7, :cond_0

    #@24
    .line 610
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
    .line 612
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStatsLocked()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    .line 598
    .end local v1    # "dischargeThreshold":I
    .end local v4    # "durationThreshold":J
    :cond_0
    :goto_0
    return-void

    #@31
    .line 618
    :catch_0
    move-exception v6

    #@32
    .line 619
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
    .line 620
    const-string/jumbo v9, " or "

    #@47
    .line 619
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
    goto :goto_0
.end method

.method private processValuesLocked(Z)V
    .locals 12
    .param p1, "force"    # Z

    #@0
    .prologue
    .line 324
    const/4 v11, 0x0

    #@1
    .line 325
    .local v11, "logOutlier":Z
    const-wide/16 v8, 0x0

    #@3
    .line 327
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
    .line 328
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@10
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@12
    if-eqz v0, :cond_c

    #@14
    .line 329
    const/4 v0, 0x1

    #@15
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@17
    .line 359
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
    .line 360
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
    .line 361
    iget-object v6, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2d
    iget v6, v6, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@2f
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@31
    iget v7, v7, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@33
    .line 359
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 366
    :goto_2
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPowerLocked()V

    #@39
    .line 367
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTempLocked()V

    #@3c
    .line 369
    if-nez p1, :cond_0

    #@3e
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@40
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@42
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    #@44
    if-ne v0, v1, :cond_0

    #@46
    .line 370
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@48
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@4a
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    #@4c
    if-eq v0, v1, :cond_f

    #@4e
    .line 381
    :cond_0
    :goto_3
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@50
    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@52
    if-eq v0, v1, :cond_1

    #@54
    .line 382
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@56
    if-nez v0, :cond_10

    #@58
    .line 387
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@5a
    const-wide/16 v2, 0x0

    #@5c
    cmp-long v0, v0, v2

    #@5e
    if-eqz v0, :cond_1

    #@60
    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@62
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@64
    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@66
    if-eq v0, v1, :cond_1

    #@68
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@6b
    move-result-wide v0

    #@6c
    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@6e
    sub-long v8, v0, v2

    #@70
    .line 389
    const/4 v11, 0x1

    #@71
    .line 390
    const/4 v0, 0x3

    #@72
    new-array v0, v0, [Ljava/lang/Object;

    #@74
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@77
    move-result-object v1

    #@78
    const/4 v2, 0x0

    #@79
    aput-object v1, v0, v2

    #@7b
    .line 391
    iget v1, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@7d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80
    move-result-object v1

    #@81
    const/4 v2, 0x1

    #@82
    aput-object v1, v0, v2

    #@84
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@86
    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8b
    move-result-object v1

    #@8c
    const/4 v2, 0x2

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 390
    const/16 v1, 0xaaa

    #@91
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@94
    .line 393
    const-wide/16 v0, 0x0

    #@96
    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@98
    .line 401
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@9a
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@9c
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    #@9e
    if-ne v0, v1, :cond_2

    #@a0
    .line 402
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@a2
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@a4
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    #@a6
    if-eq v0, v1, :cond_11

    #@a8
    .line 405
    :cond_2
    :goto_5
    const/4 v0, 0x5

    #@a9
    new-array v1, v0, [Ljava/lang/Object;

    #@ab
    .line 406
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@ad
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@af
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b2
    move-result-object v0

    #@b3
    const/4 v2, 0x0

    #@b4
    aput-object v0, v1, v2

    #@b6
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@b8
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@ba
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@bd
    move-result-object v0

    #@be
    const/4 v2, 0x1

    #@bf
    aput-object v0, v1, v2

    #@c1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@c3
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@c5
    if-eqz v0, :cond_12

    #@c7
    const/4 v0, 0x1

    #@c8
    :goto_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@cb
    move-result-object v0

    #@cc
    const/4 v2, 0x2

    #@cd
    aput-object v0, v1, v2

    #@cf
    .line 407
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@d1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@d4
    move-result-object v0

    #@d5
    const/4 v2, 0x3

    #@d6
    aput-object v0, v1, v2

    #@d8
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@da
    iget-object v0, v0, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@dc
    const/4 v2, 0x4

    #@dd
    aput-object v0, v1, v2

    #@df
    .line 405
    const/16 v0, 0xaa3

    #@e1
    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@e4
    .line 409
    :cond_3
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@e6
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@e8
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@ea
    if-eq v0, v1, :cond_4

    #@ec
    .line 412
    const/4 v0, 0x3

    #@ed
    new-array v0, v0, [Ljava/lang/Object;

    #@ef
    .line 413
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@f1
    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    #@f3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@f6
    move-result-object v1

    #@f7
    const/4 v2, 0x0

    #@f8
    aput-object v1, v0, v2

    #@fa
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@fc
    iget v1, v1, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@fe
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@101
    move-result-object v1

    #@102
    const/4 v2, 0x1

    #@103
    aput-object v1, v0, v2

    #@105
    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@107
    iget v1, v1, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10c
    move-result-object v1

    #@10d
    const/4 v2, 0x2

    #@10e
    aput-object v1, v0, v2

    #@110
    .line 412
    const/16 v1, 0xaa2

    #@112
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@115
    .line 415
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    #@117
    if-eqz v0, :cond_5

    #@119
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    #@11b
    if-eqz v0, :cond_13

    #@11d
    .line 423
    :cond_5
    :goto_7
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@11f
    if-nez v0, :cond_14

    #@121
    .line 425
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@123
    if-nez v0, :cond_6

    #@125
    .line 426
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@127
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@129
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@12b
    if-gt v0, v1, :cond_6

    #@12d
    .line 427
    const/4 v0, 0x1

    #@12e
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@130
    .line 442
    :cond_6
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntentLocked()V

    #@133
    .line 447
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@135
    if-eqz v0, :cond_17

    #@137
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@139
    if-nez v0, :cond_17

    #@13b
    .line 448
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@13d
    new-instance v1, Lcom/android/server/BatteryService$5;

    #@13f
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$5;-><init>(Lcom/android/server/BatteryService;)V

    #@142
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@145
    .line 468
    :cond_7
    :goto_9
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shouldSendBatteryLowLocked()Z

    #@148
    move-result v0

    #@149
    if-eqz v0, :cond_18

    #@14b
    .line 469
    const/4 v0, 0x1

    #@14c
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@14e
    .line 470
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@150
    new-instance v1, Lcom/android/server/BatteryService$7;

    #@152
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$7;-><init>(Lcom/android/server/BatteryService;)V

    #@155
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@158
    .line 491
    :cond_8
    :goto_a
    iget-object v0, p0, Lcom/android/server/BatteryService;->mLed:Lcom/android/server/BatteryService$Led;

    #@15a
    invoke-virtual {v0}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V

    #@15d
    .line 494
    if-eqz v11, :cond_9

    #@15f
    const-wide/16 v0, 0x0

    #@161
    cmp-long v0, v8, v0

    #@163
    if-eqz v0, :cond_9

    #@165
    .line 495
    invoke-direct {p0, v8, v9}, Lcom/android/server/BatteryService;->logOutlierLocked(J)V

    #@168
    .line 498
    :cond_9
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@16a
    iget v0, v0, Landroid/os/BatteryProperties;->batteryStatus:I

    #@16c
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    #@16e
    .line 499
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@170
    iget v0, v0, Landroid/os/BatteryProperties;->batteryHealth:I

    #@172
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    #@174
    .line 500
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@176
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@178
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    #@17a
    .line 501
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@17c
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@17e
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@180
    .line 502
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@182
    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@184
    .line 503
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@186
    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@188
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    #@18a
    .line 504
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@18c
    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@18e
    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    #@190
    .line 505
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@192
    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@194
    iput v0, p0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    #@196
    .line 506
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@198
    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@19a
    iput v0, p0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    #@19c
    .line 507
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@19e
    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@1a0
    iput v0, p0, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    #@1a2
    .line 508
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    #@1a4
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    #@1a6
    .line 509
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@1a8
    iput v0, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    #@1aa
    .line 323
    :cond_a
    return-void

    #@1ab
    .line 327
    :cond_b
    const/4 v0, 0x0

    #@1ac
    goto/16 :goto_0

    #@1ae
    .line 330
    :cond_c
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1b0
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@1b2
    if-eqz v0, :cond_d

    #@1b4
    .line 331
    const/4 v0, 0x2

    #@1b5
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1b7
    goto/16 :goto_1

    #@1b9
    .line 332
    :cond_d
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1bb
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@1bd
    if-eqz v0, :cond_e

    #@1bf
    .line 333
    const/4 v0, 0x4

    #@1c0
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1c2
    goto/16 :goto_1

    #@1c4
    .line 335
    :cond_e
    const/4 v0, 0x0

    #@1c5
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1c7
    goto/16 :goto_1

    #@1c9
    .line 371
    :cond_f
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1cb
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@1cd
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    #@1cf
    if-ne v0, v1, :cond_0

    #@1d1
    .line 372
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1d3
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@1d5
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@1d7
    if-ne v0, v1, :cond_0

    #@1d9
    .line 373
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@1db
    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@1dd
    if-ne v0, v1, :cond_0

    #@1df
    .line 374
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1e1
    iget v0, v0, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@1e3
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    #@1e5
    if-ne v0, v1, :cond_0

    #@1e7
    .line 375
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1e9
    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@1eb
    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    #@1ed
    if-ne v0, v1, :cond_0

    #@1ef
    .line 376
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1f1
    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@1f3
    iget v1, p0, Lcom/android/server/BatteryService;->mLastMaxChargingCurrent:I

    #@1f5
    if-ne v0, v1, :cond_0

    #@1f7
    .line 377
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1f9
    iget v0, v0, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@1fb
    iget v1, p0, Lcom/android/server/BatteryService;->mLastMaxChargingVoltage:I

    #@1fd
    if-ne v0, v1, :cond_0

    #@1ff
    .line 378
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@201
    iget v0, v0, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@203
    iget v1, p0, Lcom/android/server/BatteryService;->mLastChargeCounter:I

    #@205
    if-ne v0, v1, :cond_0

    #@207
    .line 379
    iget v0, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@209
    iget v1, p0, Lcom/android/server/BatteryService;->mLastInvalidCharger:I

    #@20b
    if-eq v0, v1, :cond_a

    #@20d
    goto/16 :goto_3

    #@20f
    .line 395
    :cond_10
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@211
    if-nez v0, :cond_1

    #@213
    .line 397
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@216
    move-result-wide v0

    #@217
    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@219
    .line 398
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@21b
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@21d
    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    #@21f
    goto/16 :goto_4

    #@221
    .line 403
    :cond_11
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@223
    iget-boolean v0, v0, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@225
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    #@227
    if-ne v0, v1, :cond_2

    #@229
    .line 404
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@22b
    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@22d
    if-eq v0, v1, :cond_3

    #@22f
    goto/16 :goto_5

    #@231
    .line 406
    :cond_12
    const/4 v0, 0x0

    #@232
    goto/16 :goto_6

    #@234
    .line 416
    :cond_13
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@236
    if-nez v0, :cond_5

    #@238
    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@23b
    move-result-wide v0

    #@23c
    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    #@23e
    sub-long v8, v0, v2

    #@240
    .line 420
    const/4 v11, 0x1

    #@241
    goto/16 :goto_7

    #@243
    .line 431
    :cond_14
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@245
    if-eqz v0, :cond_15

    #@247
    .line 432
    const/4 v0, 0x0

    #@248
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@24a
    goto/16 :goto_8

    #@24c
    .line 433
    :cond_15
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@24e
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@250
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@252
    if-lt v0, v1, :cond_16

    #@254
    .line 434
    const/4 v0, 0x0

    #@255
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@257
    goto/16 :goto_8

    #@259
    .line 435
    :cond_16
    if-eqz p1, :cond_6

    #@25b
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@25d
    iget v0, v0, Landroid/os/BatteryProperties;->batteryLevel:I

    #@25f
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@261
    if-lt v0, v1, :cond_6

    #@263
    .line 438
    const/4 v0, 0x0

    #@264
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelLow:Z

    #@266
    goto/16 :goto_8

    #@268
    .line 457
    :cond_17
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@26a
    if-nez v0, :cond_7

    #@26c
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@26e
    if-eqz v0, :cond_7

    #@270
    .line 458
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@272
    new-instance v1, Lcom/android/server/BatteryService$6;

    #@274
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$6;-><init>(Lcom/android/server/BatteryService;)V

    #@277
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@27a
    goto/16 :goto_9

    #@27c
    .line 478
    :cond_18
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@27e
    if-eqz v0, :cond_8

    #@280
    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@282
    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@284
    if-lt v0, v1, :cond_8

    #@286
    .line 479
    const/4 v0, 0x0

    #@287
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    #@289
    .line 480
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@28b
    new-instance v1, Lcom/android/server/BatteryService$8;

    #@28d
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$8;-><init>(Lcom/android/server/BatteryService;)V

    #@290
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@293
    goto/16 :goto_a

    #@295
    .line 362
    :catch_0
    move-exception v10

    #@296
    .local v10, "e":Landroid/os/RemoteException;
    goto/16 :goto_2
.end method

.method private sendIntentLocked()V
    .locals 4

    #@0
    .prologue
    .line 515
    new-instance v1, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 516
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x60000000

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 519
    iget-object v2, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@f
    iget v2, v2, Landroid/os/BatteryProperties;->batteryLevel:I

    #@11
    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIconLocked(I)I

    #@14
    move-result v0

    #@15
    .line 521
    .local v0, "icon":I
    const-string/jumbo v2, "status"

    #@18
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@1a
    iget v3, v3, Landroid/os/BatteryProperties;->batteryStatus:I

    #@1c
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@1f
    .line 522
    const-string/jumbo v2, "health"

    #@22
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@24
    iget v3, v3, Landroid/os/BatteryProperties;->batteryHealth:I

    #@26
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@29
    .line 523
    const-string/jumbo v2, "present"

    #@2c
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2e
    iget-boolean v3, v3, Landroid/os/BatteryProperties;->batteryPresent:Z

    #@30
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@33
    .line 524
    const-string/jumbo v2, "level"

    #@36
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@38
    iget v3, v3, Landroid/os/BatteryProperties;->batteryLevel:I

    #@3a
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@3d
    .line 525
    const-string/jumbo v2, "scale"

    #@40
    const/16 v3, 0x64

    #@42
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@45
    .line 526
    const-string/jumbo v2, "icon-small"

    #@48
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@4b
    .line 527
    const-string/jumbo v2, "plugged"

    #@4e
    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@50
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@53
    .line 528
    const-string/jumbo v2, "voltage"

    #@56
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@58
    iget v3, v3, Landroid/os/BatteryProperties;->batteryVoltage:I

    #@5a
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@5d
    .line 529
    const-string/jumbo v2, "temperature"

    #@60
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@62
    iget v3, v3, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@64
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@67
    .line 530
    const-string/jumbo v2, "technology"

    #@6a
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@6c
    iget-object v3, v3, Landroid/os/BatteryProperties;->batteryTechnology:Ljava/lang/String;

    #@6e
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@71
    .line 531
    const-string/jumbo v2, "invalid_charger"

    #@74
    iget v3, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@76
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@79
    .line 532
    const-string/jumbo v2, "max_charging_current"

    #@7c
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@7e
    iget v3, v3, Landroid/os/BatteryProperties;->maxChargingCurrent:I

    #@80
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@83
    .line 533
    const-string/jumbo v2, "max_charging_voltage"

    #@86
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@88
    iget v3, v3, Landroid/os/BatteryProperties;->maxChargingVoltage:I

    #@8a
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@8d
    .line 534
    const-string/jumbo v2, "charge_counter"

    #@90
    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@92
    iget v3, v3, Landroid/os/BatteryProperties;->batteryChargeCounter:I

    #@94
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@97
    .line 552
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@99
    new-instance v3, Lcom/android/server/BatteryService$9;

    #@9b
    invoke-direct {v3, p0, v1}, Lcom/android/server/BatteryService$9;-><init>(Lcom/android/server/BatteryService;Landroid/content/Intent;)V

    #@9e
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a1
    .line 513
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
    .line 259
    iget v4, p0, Lcom/android/server/BatteryService;->mPlugType:I

    #@4
    if-eqz v4, :cond_1

    #@6
    const/4 v1, 0x1

    #@7
    .line 260
    .local v1, "plugged":Z
    :goto_0
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    #@9
    if-eqz v4, :cond_2

    #@b
    const/4 v0, 0x1

    #@c
    .line 268
    .local v0, "oldPlugged":Z
    :goto_1
    if-nez v1, :cond_4

    #@e
    .line 269
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@10
    iget v4, v4, Landroid/os/BatteryProperties;->batteryStatus:I

    #@12
    if-eq v4, v2, :cond_4

    #@14
    .line 270
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@16
    iget v4, v4, Landroid/os/BatteryProperties;->batteryLevel:I

    #@18
    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@1a
    if-gt v4, v5, :cond_4

    #@1c
    .line 271
    if-nez v0, :cond_0

    #@1e
    iget v4, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    #@20
    iget v5, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@22
    if-le v4, v5, :cond_3

    #@24
    .line 268
    :cond_0
    :goto_2
    return v2

    #@25
    .line 259
    .end local v0    # "oldPlugged":Z
    .end local v1    # "plugged":Z
    :cond_1
    const/4 v1, 0x0

    #@26
    .restart local v1    # "plugged":Z
    goto :goto_0

    #@27
    .line 260
    :cond_2
    const/4 v0, 0x0

    #@28
    .restart local v0    # "oldPlugged":Z
    goto :goto_1

    #@29
    :cond_3
    move v2, v3

    #@2a
    .line 271
    goto :goto_2

    #@2b
    :cond_4
    move v2, v3

    #@2c
    .line 268
    goto :goto_2
.end method

.method private shutdownIfNoPowerLocked()V
    .locals 2

    #@0
    .prologue
    .line 277
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
    .line 274
    :cond_0
    :goto_0
    return-void

    #@e
    .line 278
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
    .line 296
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2
    iget v0, v0, Landroid/os/BatteryProperties;->batteryTemperature:I

    #@4
    iget v1, p0, Lcom/android/server/BatteryService;->mShutdownBatteryTemperature:I

    #@6
    if-le v0, v1, :cond_0

    #@8
    .line 297
    iget-object v0, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@a
    new-instance v1, Lcom/android/server/BatteryService$4;

    #@c
    invoke-direct {v1, p0}, Lcom/android/server/BatteryService$4;-><init>(Lcom/android/server/BatteryService;)V

    #@f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@12
    .line 292
    :cond_0
    return-void
.end method

.method private update(Landroid/os/BatteryProperties;)V
    .locals 2
    .param p1, "props"    # Landroid/os/BatteryProperties;

    #@0
    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 313
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 314
    iput-object p1, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@9
    .line 316
    const/4 v0, 0x0

    #@a
    invoke-direct {p0, v0}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    :goto_0
    monitor-exit v1

    #@e
    .line 311
    return-void

    #@f
    .line 318
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
    .line 312
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
    .line 224
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 225
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b
    move-result-object v2

    #@c
    .line 226
    const v3, 0x10e0056

    #@f
    .line 225
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@12
    move-result v0

    #@13
    .line 228
    .local v0, "defWarnLevel":I
    const-string/jumbo v2, "low_power_trigger_level"

    #@16
    .line 227
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@19
    move-result v2

    #@1a
    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@1c
    .line 229
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@1e
    if-nez v2, :cond_0

    #@20
    .line 230
    iput v0, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@22
    .line 232
    :cond_0
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@24
    iget v3, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@26
    if-ge v2, v3, :cond_1

    #@28
    .line 233
    iget v2, p0, Lcom/android/server/BatteryService;->mCriticalBatteryLevel:I

    #@2a
    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@2c
    .line 235
    :cond_1
    iget v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    #@2e
    iget-object v3, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@33
    move-result-object v3

    #@34
    .line 236
    const v4, 0x10e0057

    #@37
    .line 235
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    #@3a
    move-result v3

    #@3b
    add-int/2addr v2, v3

    #@3c
    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    #@3e
    .line 237
    const/4 v2, 0x1

    #@3f
    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V

    #@42
    .line 223
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 6
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 203
    const/16 v2, 0x226

    #@2
    if-ne p1, v2, :cond_0

    #@4
    .line 205
    iget-object v3, p0, Lcom/android/server/BatteryService;->mLock:Ljava/lang/Object;

    #@6
    monitor-enter v3

    #@7
    .line 206
    :try_start_0
    new-instance v0, Lcom/android/server/BatteryService$2;

    #@9
    iget-object v2, p0, Lcom/android/server/BatteryService;->mHandler:Landroid/os/Handler;

    #@b
    invoke-direct {v0, p0, v2}, Lcom/android/server/BatteryService$2;-><init>(Lcom/android/server/BatteryService;Landroid/os/Handler;)V

    #@e
    .line 214
    .local v0, "obs":Landroid/database/ContentObserver;
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    #@10
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@13
    move-result-object v1

    #@14
    .line 216
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v2, "low_power_trigger_level"

    #@17
    .line 215
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    #@1a
    move-result-object v2

    #@1b
    .line 217
    const/4 v4, 0x0

    #@1c
    const/4 v5, -0x1

    #@1d
    .line 215
    invoke-virtual {v1, v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    #@20
    .line 218
    invoke-direct {p0}, Lcom/android/server/BatteryService;->updateBatteryWarningLevelLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 202
    .end local v0    # "obs":Landroid/database/ContentObserver;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_0
    return-void

    #@25
    .line 205
    :catchall_0
    move-exception v2

    #@26
    monitor-exit v3

    #@27
    throw v2
.end method

.method onShellCommand(Lcom/android/server/BatteryService$Shell;Ljava/lang/String;)I
    .locals 13
    .param p1, "shell"    # Lcom/android/server/BatteryService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v12, -0x1

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v11, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    .line 669
    if-nez p2, :cond_0

    #@6
    .line 670
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    #@9
    move-result v7

    #@a
    return v7

    #@b
    .line 672
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    #@e
    move-result-object v4

    #@f
    .line 673
    .local v4, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v9, "unplug"

    #@12
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v9

    #@16
    if-eqz v9, :cond_3

    #@18
    .line 675
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    #@1b
    move-result-object v7

    #@1c
    .line 676
    const-string/jumbo v9, "android.permission.DEVICE_POWER"

    #@1f
    .line 675
    invoke-virtual {v7, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 677
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@24
    if-nez v7, :cond_1

    #@26
    .line 678
    iget-object v7, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@28
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2a
    invoke-virtual {v7, v9}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    #@2d
    .line 680
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@2f
    iput-boolean v8, v7, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@31
    .line 681
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@33
    iput-boolean v8, v7, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@35
    .line 682
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@37
    iput-boolean v8, v7, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@39
    .line 683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@3c
    move-result-wide v2

    #@3d
    .line 685
    .local v2, "ident":J
    const/4 v7, 0x1

    #@3e
    :try_start_0
    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@40
    .line 686
    const/4 v7, 0x0

    #@41
    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@44
    .line 688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@47
    .line 766
    .end local v2    # "ident":J
    :cond_2
    :goto_0
    return v8

    #@48
    .line 673
    :cond_3
    const-string/jumbo v9, "set"

    #@4b
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v9

    #@4f
    if-eqz v9, :cond_4

    #@51
    .line 692
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    #@54
    move-result-object v9

    #@55
    .line 693
    const-string/jumbo v10, "android.permission.DEVICE_POWER"

    #@58
    .line 692
    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@5b
    .line 694
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    .line 695
    .local v1, "key":Ljava/lang/String;
    if-nez v1, :cond_6

    #@61
    .line 696
    const-string/jumbo v7, "No property specified"

    #@64
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    .line 697
    return v12

    #@68
    .line 673
    .end local v1    # "key":Ljava/lang/String;
    :cond_4
    const-string/jumbo v7, "reset"

    #@6b
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6e
    move-result v7

    #@6f
    if-eqz v7, :cond_12

    #@71
    .line 750
    invoke-virtual {p0}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    #@74
    move-result-object v7

    #@75
    .line 751
    const-string/jumbo v9, "android.permission.DEVICE_POWER"

    #@78
    .line 750
    invoke-virtual {v7, v9, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    #@7b
    .line 752
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@7e
    move-result-wide v2

    #@7f
    .line 754
    .restart local v2    # "ident":J
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@81
    if-eqz v7, :cond_5

    #@83
    .line 755
    const/4 v7, 0x0

    #@84
    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@86
    .line 756
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@88
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@8a
    invoke-virtual {v7, v9}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    #@8d
    .line 757
    const/4 v7, 0x0

    #@8e
    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    #@91
    .line 760
    :cond_5
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@94
    goto :goto_0

    #@95
    .line 687
    :catchall_0
    move-exception v7

    #@96
    .line 688
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@99
    .line 687
    throw v7

    #@9a
    .line 700
    .end local v2    # "ident":J
    .restart local v1    # "key":Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/BatteryService$Shell;->getNextArg()Ljava/lang/String;

    #@9d
    move-result-object v6

    #@9e
    .line 701
    .local v6, "value":Ljava/lang/String;
    if-nez v6, :cond_7

    #@a0
    .line 702
    const-string/jumbo v7, "No value specified"

    #@a3
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@a6
    .line 703
    return v12

    #@a7
    .line 707
    :cond_7
    :try_start_2
    iget-boolean v9, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@a9
    if-nez v9, :cond_8

    #@ab
    .line 708
    iget-object v9, p0, Lcom/android/server/BatteryService;->mLastBatteryProps:Landroid/os/BatteryProperties;

    #@ad
    iget-object v10, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@af
    invoke-virtual {v9, v10}, Landroid/os/BatteryProperties;->set(Landroid/os/BatteryProperties;)V

    #@b2
    .line 710
    :cond_8
    const/4 v5, 0x1

    #@b3
    .line 711
    .local v5, "update":Z
    const-string/jumbo v9, "ac"

    #@b6
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b9
    move-result v9

    #@ba
    if-eqz v9, :cond_9

    #@bc
    .line 713
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@be
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@c1
    move-result v10

    #@c2
    if-eqz v10, :cond_e

    #@c4
    :goto_1
    iput-boolean v7, v9, Landroid/os/BatteryProperties;->chargerAcOnline:Z

    #@c6
    .line 735
    :goto_2
    if-eqz v5, :cond_2

    #@c8
    .line 736
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    #@cb
    move-result-wide v2

    #@cc
    .line 738
    .restart local v2    # "ident":J
    const/4 v7, 0x1

    #@cd
    :try_start_3
    iput-boolean v7, p0, Lcom/android/server/BatteryService;->mUpdatesStopped:Z

    #@cf
    .line 739
    const/4 v7, 0x0

    #@d0
    invoke-direct {p0, v7}, Lcom/android/server/BatteryService;->processValuesLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@d3
    .line 741
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    #@d6
    goto/16 :goto_0

    #@d8
    .line 744
    .end local v2    # "ident":J
    .end local v5    # "update":Z
    :catch_0
    move-exception v0

    #@d9
    .line 745
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v7, Ljava/lang/StringBuilder;

    #@db
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v8, "Bad value: "

    #@e1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v7

    #@e5
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v7

    #@e9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v7

    #@ed
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f0
    .line 746
    return v12

    #@f1
    .line 711
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v5    # "update":Z
    :cond_9
    :try_start_5
    const-string/jumbo v9, "usb"

    #@f4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v9

    #@f8
    if-eqz v9, :cond_a

    #@fa
    .line 716
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@fc
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@ff
    move-result v10

    #@100
    if-eqz v10, :cond_f

    #@102
    :goto_3
    iput-boolean v7, v9, Landroid/os/BatteryProperties;->chargerUsbOnline:Z

    #@104
    goto :goto_2

    #@105
    .line 711
    :cond_a
    const-string/jumbo v9, "wireless"

    #@108
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10b
    move-result v9

    #@10c
    if-eqz v9, :cond_b

    #@10e
    .line 719
    iget-object v9, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@110
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@113
    move-result v10

    #@114
    if-eqz v10, :cond_10

    #@116
    :goto_4
    iput-boolean v7, v9, Landroid/os/BatteryProperties;->chargerWirelessOnline:Z

    #@118
    goto :goto_2

    #@119
    .line 711
    :cond_b
    const-string/jumbo v7, "status"

    #@11c
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11f
    move-result v7

    #@120
    if-eqz v7, :cond_c

    #@122
    .line 722
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@124
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@127
    move-result v9

    #@128
    iput v9, v7, Landroid/os/BatteryProperties;->batteryStatus:I

    #@12a
    goto :goto_2

    #@12b
    .line 711
    :cond_c
    const-string/jumbo v7, "level"

    #@12e
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@131
    move-result v7

    #@132
    if-eqz v7, :cond_d

    #@134
    .line 725
    iget-object v7, p0, Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;

    #@136
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@139
    move-result v9

    #@13a
    iput v9, v7, Landroid/os/BatteryProperties;->batteryLevel:I

    #@13c
    goto :goto_2

    #@13d
    .line 711
    :cond_d
    const-string/jumbo v7, "invalid"

    #@140
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v7

    #@144
    if-eqz v7, :cond_11

    #@146
    .line 728
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@149
    move-result v7

    #@14a
    iput v7, p0, Lcom/android/server/BatteryService;->mInvalidCharger:I

    #@14c
    goto/16 :goto_2

    #@14e
    :cond_e
    move v7, v8

    #@14f
    .line 713
    goto/16 :goto_1

    #@151
    :cond_f
    move v7, v8

    #@152
    .line 716
    goto :goto_3

    #@153
    :cond_10
    move v7, v8

    #@154
    .line 719
    goto :goto_4

    #@155
    .line 731
    :cond_11
    new-instance v7, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v9, "Unknown set option: "

    #@15d
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v7

    #@161
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v7

    #@165
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@168
    move-result-object v7

    #@169
    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@16c
    .line 732
    const/4 v5, 0x0

    #@16d
    .line 733
    goto/16 :goto_2

    #@16f
    .line 740
    .restart local v2    # "ident":J
    :catchall_1
    move-exception v7

    #@170
    .line 741
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@173
    .line 740
    throw v7
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0

    #@174
    .line 759
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "update":Z
    .end local v6    # "value":Ljava/lang/String;
    :catchall_2
    move-exception v7

    #@175
    .line 760
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@178
    .line 759
    throw v7

    #@179
    .line 764
    .end local v2    # "ident":J
    :cond_12
    invoke-virtual {p1, p2}, Lcom/android/server/BatteryService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    #@17c
    move-result v7

    #@17d
    return v7
.end method

.method public onStart()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 187
    const-string/jumbo v3, "batteryproperties"

    #@4
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@7
    move-result-object v0

    #@8
    .line 189
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IBatteryPropertiesRegistrar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IBatteryPropertiesRegistrar;

    #@b
    move-result-object v1

    #@c
    .line 191
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
    .line 196
    :goto_0
    new-instance v3, Lcom/android/server/BatteryService$BinderService;

    #@17
    invoke-direct {v3, p0, v5}, Lcom/android/server/BatteryService$BinderService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$BinderService;)V

    #@1a
    iput-object v3, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    #@1c
    .line 197
    const-string/jumbo v3, "battery"

    #@1f
    iget-object v4, p0, Lcom/android/server/BatteryService;->mBinderService:Lcom/android/server/BatteryService$BinderService;

    #@21
    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@24
    .line 198
    const-class v3, Landroid/os/BatteryManagerInternal;

    #@26
    new-instance v4, Lcom/android/server/BatteryService$LocalService;

    #@28
    invoke-direct {v4, p0, v5}, Lcom/android/server/BatteryService$LocalService;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$LocalService;)V

    #@2b
    invoke-virtual {p0, v3, v4}, Lcom/android/server/BatteryService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    #@2e
    .line 186
    return-void

    #@2f
    .line 192
    :catch_0
    move-exception v2

    #@30
    .local v2, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
