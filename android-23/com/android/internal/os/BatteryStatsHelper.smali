.class public final Lcom/android/internal/os/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sBatteryBroadcastXfer:Landroid/content/Intent;

.field private static sFileXfer:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/io/File;",
            "Landroid/os/BatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field private static sStatsXfer:Landroid/os/BatteryStats;


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field mBatteryRealtime:J

.field mBatteryTimeRemaining:J

.field mBatteryUptime:J

.field mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mChargeTimeRemaining:J

.field private final mCollectBatteryBroadcast:Z

.field private mComputedPower:D

.field private final mContext:Landroid/content/Context;

.field mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field mHasBluetoothPowerReporting:Z

.field mHasWifiPowerReporting:Z

.field private mMaxDrainedPower:D

.field private mMaxPower:D

.field private mMaxRealPower:D

.field private mMinDrainedPower:D

.field mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

.field private final mMobilemsppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field mRawRealtime:J

.field mRawUptime:J

.field mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private mStats:Landroid/os/BatteryStats;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field mTypeBatteryRealtime:J

.field mTypeBatteryUptime:J

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiOnly:Z

.field mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 61
    const-class v0, Lcom/android/internal/os/BatteryStatsHelper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    #@8
    .line 65
    new-instance v0, Landroid/util/ArrayMap;

    #@a
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@d
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    #@f
    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 154
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    #@4
    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z

    #@0
    .prologue
    .line 158
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    #@7
    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "collectBatteryBroadcast"    # Z
    .param p3, "wifiOnly"    # Z

    #@0
    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    #@2
    const/4 v2, 0x0

    #@3
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 79
    new-instance v0, Ljava/util/ArrayList;

    #@8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@d
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    #@14
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    #@16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@19
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    #@1b
    .line 91
    new-instance v0, Landroid/util/SparseArray;

    #@1d
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@22
    .line 93
    new-instance v0, Ljava/util/ArrayList;

    #@24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    #@29
    .line 95
    iput v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@2b
    .line 106
    const-wide/16 v0, 0x0

    #@2d
    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    #@2f
    .line 109
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@31
    .line 112
    iput-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    #@33
    .line 129
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    #@35
    .line 130
    iput-boolean v2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    #@37
    .line 162
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    #@39
    .line 163
    iput-boolean p2, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    #@3b
    .line 164
    iput-boolean p3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    #@3d
    .line 161
    return-void
.end method

.method private addBluetoothUsage()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 643
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    #@4
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@a
    .line 644
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@e
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@10
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@12
    .line 645
    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@14
    .line 644
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    #@17
    .line 646
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    #@19
    const-string/jumbo v1, "Bluetooth"

    #@1c
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    #@1f
    .line 647
    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@21
    cmpl-double v0, v0, v10

    #@23
    if-lez v0, :cond_0

    #@25
    .line 648
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 642
    :cond_0
    return-void
.end method

.method private addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;
    .locals 4
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "time"    # J
    .param p4, "power"    # D

    #@0
    .prologue
    .line 676
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    #@2
    const-wide/16 v2, 0x0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@8
    .line 677
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput-wide p4, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@a
    .line 678
    iput-wide p2, v0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    #@c
    .line 679
    invoke-virtual {v0}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    #@f
    .line 680
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@11
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14
    .line 681
    return-object v0
.end method

.method private addIdleUsage()V
    .locals 10

    #@0
    .prologue
    .line 610
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    #@2
    .line 611
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@4
    iget-wide v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@6
    iget v7, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@8
    invoke-virtual {v6, v8, v9, v7}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@b
    move-result-wide v6

    #@c
    .line 610
    sub-long/2addr v0, v6

    #@d
    .line 611
    const-wide/16 v6, 0x3e8

    #@f
    .line 610
    div-long v2, v0, v6

    #@11
    .line 612
    .local v2, "idleTimeMs":J
    long-to-double v0, v2

    #@12
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@14
    const-string/jumbo v7, "cpu.idle"

    #@17
    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1a
    move-result-wide v6

    #@1b
    mul-double/2addr v0, v6

    #@1c
    .line 613
    const-wide v6, 0x414b774000000000L    # 3600000.0

    #@21
    .line 612
    div-double v4, v0, v6

    #@23
    .line 617
    .local v4, "idlePower":D
    const-wide/16 v0, 0x0

    #@25
    cmpl-double v0, v4, v0

    #@27
    if-eqz v0, :cond_0

    #@29
    .line 618
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@2b
    move-object v0, p0

    #@2c
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    #@2f
    .line 609
    :cond_0
    return-void
.end method

.method private addPhoneUsage()V
    .locals 8

    #@0
    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@2
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@4
    iget v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@6
    invoke-virtual {v0, v6, v7, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    #@9
    move-result-wide v0

    #@a
    const-wide/16 v6, 0x3e8

    #@c
    div-long v2, v0, v6

    #@e
    .line 558
    .local v2, "phoneOnTimeMs":J
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@10
    const-string/jumbo v1, "radio.active"

    #@13
    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@16
    move-result-wide v0

    #@17
    .line 559
    long-to-double v6, v2

    #@18
    .line 558
    mul-double/2addr v0, v6

    #@19
    .line 559
    const-wide v6, 0x414b774000000000L    # 3600000.0

    #@1e
    .line 558
    div-double v4, v0, v6

    #@20
    .line 560
    .local v4, "phoneOnPower":D
    const-wide/16 v0, 0x0

    #@22
    cmpl-double v0, v4, v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 561
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    #@28
    move-object v0, p0

    #@29
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    #@2c
    .line 556
    :cond_0
    return-void
.end method

.method private addRadioUsage()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 590
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    #@4
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@a
    .line 591
    .local v2, "radio":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    #@c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@e
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@10
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@12
    .line 592
    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@14
    .line 591
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    #@17
    .line 593
    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    #@1a
    .line 594
    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@1c
    cmpl-double v0, v0, v10

    #@1e
    if-lez v0, :cond_0

    #@20
    .line 595
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@25
    .line 589
    :cond_0
    return-void
.end method

.method private addScreenUsage()V
    .locals 20

    #@0
    .prologue
    .line 567
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@4
    move-object/from16 v0, p0

    #@6
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@8
    move-wide/from16 v18, v0

    #@a
    move-object/from16 v0, p0

    #@c
    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@e
    move-wide/from16 v0, v18

    #@10
    invoke-virtual {v2, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    #@13
    move-result-wide v2

    #@14
    const-wide/16 v18, 0x3e8

    #@16
    div-long v4, v2, v18

    #@18
    .line 568
    .local v4, "screenOnTimeMs":J
    long-to-double v2, v4

    #@19
    move-object/from16 v0, p0

    #@1b
    iget-object v11, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@1d
    const-string/jumbo v18, "screen.on"

    #@20
    move-object/from16 v0, v18

    #@22
    invoke-virtual {v11, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@25
    move-result-wide v18

    #@26
    mul-double v2, v2, v18

    #@28
    .line 566
    const-wide/16 v18, 0x0

    #@2a
    .line 568
    add-double v6, v18, v2

    #@2c
    .line 570
    .local v6, "power":D
    move-object/from16 v0, p0

    #@2e
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@30
    const-string/jumbo v3, "screen.full"

    #@33
    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@36
    move-result-wide v16

    #@37
    .line 571
    .local v16, "screenFullPower":D
    const/4 v10, 0x0

    #@38
    .local v10, "i":I
    :goto_0
    const/4 v2, 0x5

    #@39
    if-ge v10, v2, :cond_0

    #@3b
    .line 572
    int-to-float v2, v10

    #@3c
    const/high16 v3, 0x3f000000    # 0.5f

    #@3e
    add-float/2addr v2, v3

    #@3f
    float-to-double v2, v2

    #@40
    mul-double v2, v2, v16

    #@42
    .line 573
    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    #@44
    .line 572
    div-double v14, v2, v18

    #@46
    .line 574
    .local v14, "screenBinPower":D
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@4e
    move-wide/from16 v18, v0

    #@50
    move-object/from16 v0, p0

    #@52
    iget v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@54
    move-wide/from16 v0, v18

    #@56
    invoke-virtual {v2, v10, v0, v1, v3}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    #@59
    move-result-wide v2

    #@5a
    .line 575
    const-wide/16 v18, 0x3e8

    #@5c
    .line 574
    div-long v8, v2, v18

    #@5e
    .line 576
    .local v8, "brightnessTime":J
    long-to-double v2, v8

    #@5f
    mul-double v12, v14, v2

    #@61
    .line 581
    .local v12, "p":D
    add-double/2addr v6, v12

    #@62
    .line 571
    add-int/lit8 v10, v10, 0x1

    #@64
    goto :goto_0

    #@65
    .line 583
    .end local v8    # "brightnessTime":J
    .end local v12    # "p":D
    .end local v14    # "screenBinPower":D
    :cond_0
    const-wide v2, 0x414b774000000000L    # 3600000.0

    #@6a
    div-double/2addr v6, v2

    #@6b
    .line 584
    const-wide/16 v2, 0x0

    #@6d
    cmpl-double v2, v6, v2

    #@6f
    if-eqz v2, :cond_1

    #@71
    .line 585
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    #@73
    move-object/from16 v2, p0

    #@75
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->addEntry(Lcom/android/internal/os/BatterySipper$DrainType;JD)Lcom/android/internal/os/BatterySipper;

    #@78
    .line 565
    :cond_1
    return-void
.end method

.method private addUserUsage()V
    .locals 7

    #@0
    .prologue
    .line 653
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@3
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@6
    move-result v3

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 654
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@b
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@e
    move-result v2

    #@f
    .line 655
    .local v2, "userId":I
    new-instance v0, Lcom/android/internal/os/BatterySipper;

    #@11
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    #@13
    const-wide/16 v4, 0x0

    #@15
    const/4 v6, 0x0

    #@16
    invoke-direct {v0, v3, v6, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@19
    .line 656
    .local v0, "bs":Lcom/android/internal/os/BatterySipper;
    iput v2, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    #@1b
    .line 657
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@1d
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@20
    move-result-object v3

    #@21
    check-cast v3, Ljava/util/List;

    #@23
    const-string/jumbo v4, "User"

    #@26
    invoke-direct {p0, v0, v3, v4}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    #@29
    .line 658
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@2b
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2e
    .line 653
    add-int/lit8 v1, v1, 0x1

    #@30
    goto :goto_0

    #@31
    .line 652
    .end local v0    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v2    # "userId":I
    :cond_0
    return-void
.end method

.method private addWiFiUsage()V
    .locals 12

    #@0
    .prologue
    const-wide/16 v10, 0x0

    #@2
    .line 630
    new-instance v2, Lcom/android/internal/os/BatterySipper;

    #@4
    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    #@6
    const/4 v1, 0x0

    #@7
    invoke-direct {v2, v0, v1, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@a
    .line 631
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@c
    iget-object v3, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@e
    iget-wide v4, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@10
    iget-wide v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@12
    iget v8, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@14
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    #@17
    .line 632
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    #@19
    const-string/jumbo v1, "WIFI"

    #@1c
    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    #@1f
    .line 633
    iget-wide v0, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@21
    cmpl-double v0, v0, v10

    #@23
    if-lez v0, :cond_0

    #@25
    .line 634
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@27
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2a
    .line 629
    :cond_0
    return-void
.end method

.method private aggregateSippers(Lcom/android/internal/os/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@4
    move-result v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 601
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    check-cast v1, Lcom/android/internal/os/BatterySipper;

    #@d
    .line 603
    .local v1, "wbs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {p1, v1}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    #@10
    .line 600
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 605
    .end local v1    # "wbs":Lcom/android/internal/os/BatterySipper;
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    #@16
    .line 606
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    #@19
    .line 599
    return-void
.end method

.method public static checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 6
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 147
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasBluetoothActivityReporting()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 148
    const-string/jumbo v1, "bluetooth.controller.idle"

    #@c
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@f
    move-result-wide v2

    #@10
    cmpl-double v1, v2, v4

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 149
    const-string/jumbo v1, "bluetooth.controller.rx"

    #@17
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1a
    move-result-wide v2

    #@1b
    cmpl-double v1, v2, v4

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 150
    const-string/jumbo v1, "bluetooth.controller.tx"

    #@22
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@25
    move-result-wide v2

    #@26
    cmpl-double v1, v2, v4

    #@28
    if-eqz v1, :cond_0

    #@2a
    const/4 v0, 0x1

    #@2b
    .line 147
    :cond_0
    return v0
.end method

.method public static checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z
    .locals 6
    .param p0, "stats"    # Landroid/os/BatteryStats;
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const-wide/16 v4, 0x0

    #@3
    .line 139
    invoke-virtual {p0}, Landroid/os/BatteryStats;->hasWifiActivityReporting()Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 140
    const-string/jumbo v1, "wifi.controller.idle"

    #@c
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@f
    move-result-wide v2

    #@10
    cmpl-double v1, v2, v4

    #@12
    if-eqz v1, :cond_0

    #@14
    .line 141
    const-string/jumbo v1, "wifi.controller.rx"

    #@17
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@1a
    move-result-wide v2

    #@1b
    cmpl-double v1, v2, v4

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 142
    const-string/jumbo v1, "wifi.controller.tx"

    #@22
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@25
    move-result-wide v2

    #@26
    cmpl-double v1, v2, v4

    #@28
    if-eqz v1, :cond_0

    #@2a
    const/4 v0, 0x1

    #@2b
    .line 139
    :cond_0
    return v0
.end method

.method public static checkWifiOnly(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 134
    const-string/jumbo v2, "connectivity"

    #@4
    .line 133
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/net/ConnectivityManager;

    #@a
    .line 135
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    :goto_0
    return v1

    #@11
    :cond_0
    const/4 v1, 0x1

    #@12
    goto :goto_0
.end method

.method public static dropFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 222
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    #@7
    .line 221
    return-void
.end method

.method private static getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 9
    .param p0, "service"    # Lcom/android/internal/app/IBatteryStats;

    #@0
    .prologue
    .line 755
    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/app/IBatteryStats;->getStatisticsStream()Landroid/os/ParcelFileDescriptor;

    #@3
    move-result-object v5

    #@4
    .line 756
    .local v5, "pfd":Landroid/os/ParcelFileDescriptor;
    if-eqz v5, :cond_0

    #@6
    .line 757
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    #@8
    invoke-direct {v3, v5}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@b
    .line 759
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@e
    move-result-object v7

    #@f
    invoke-static {v7}, Landroid/os/MemoryFile;->getSize(Ljava/io/FileDescriptor;)I

    #@12
    move-result v7

    #@13
    invoke-static {v3, v7}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    #@16
    move-result-object v0

    #@17
    .line 760
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@1a
    move-result-object v4

    #@1b
    .line 761
    .local v4, "parcel":Landroid/os/Parcel;
    array-length v7, v0

    #@1c
    const/4 v8, 0x0

    #@1d
    invoke-virtual {v4, v0, v8, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    #@20
    .line 762
    const/4 v7, 0x0

    #@21
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    #@24
    .line 763
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    #@26
    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@29
    move-result-object v6

    #@2a
    check-cast v6, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 765
    .local v6, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    return-object v6

    #@2d
    .line 766
    .end local v0    # "data":[B
    .end local v4    # "parcel":Landroid/os/Parcel;
    .end local v6    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catch_0
    move-exception v2

    #@2e
    .line 767
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    #@30
    const-string/jumbo v8, "Unable to read statistics stream"

    #@33
    invoke-static {v7, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@36
    .line 773
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "pfd":Landroid/os/ParcelFileDescriptor;
    :cond_0
    :goto_0
    new-instance v7, Lcom/android/internal/os/BatteryStatsImpl;

    #@38
    invoke-direct {v7}, Lcom/android/internal/os/BatteryStatsImpl;-><init>()V

    #@3b
    return-object v7

    #@3c
    .line 770
    :catch_1
    move-exception v1

    #@3d
    .line 771
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    #@3f
    const-string/jumbo v8, "RemoteException:"

    #@42
    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    goto :goto_0
.end method

.method private load()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 743
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 744
    return-void

    #@6
    .line 746
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    #@8
    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@e
    .line 747
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    #@10
    if-eqz v0, :cond_1

    #@12
    .line 748
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    #@14
    .line 749
    new-instance v1, Landroid/content/IntentFilter;

    #@16
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    #@19
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@1c
    .line 748
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1f
    move-result-object v0

    #@20
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    #@22
    .line 742
    :cond_1
    return-void
.end method

.method private static makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 226
    new-instance v0, Ljava/io/File;

    #@2
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public static makemAh(D)Ljava/lang/String;
    .locals 6
    .param p0, "power"    # D

    #@0
    .prologue
    .line 273
    const-wide/16 v2, 0x0

    #@2
    cmpl-double v1, p0, v2

    #@4
    if-nez v1, :cond_0

    #@6
    const-string/jumbo v1, "0"

    #@9
    return-object v1

    #@a
    .line 276
    :cond_0
    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    #@f
    cmpg-double v1, p0, v2

    #@11
    if-gez v1, :cond_1

    #@13
    const-string/jumbo v0, "%.8f"

    #@16
    .line 287
    .local v0, "format":Ljava/lang/String;
    :goto_0
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@18
    const/4 v2, 0x1

    #@19
    new-array v2, v2, [Ljava/lang/Object;

    #@1b
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1e
    move-result-object v3

    #@1f
    const/4 v4, 0x0

    #@20
    aput-object v3, v2, v4

    #@22
    invoke-static {v1, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1

    #@27
    .line 277
    .end local v0    # "format":Ljava/lang/String;
    :cond_1
    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    #@2c
    cmpg-double v1, p0, v2

    #@2e
    if-gez v1, :cond_2

    #@30
    const-string/jumbo v0, "%.7f"

    #@33
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@34
    .line 278
    .end local v0    # "format":Ljava/lang/String;
    :cond_2
    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    #@39
    cmpg-double v1, p0, v2

    #@3b
    if-gez v1, :cond_3

    #@3d
    const-string/jumbo v0, "%.6f"

    #@40
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@41
    .line 279
    .end local v0    # "format":Ljava/lang/String;
    :cond_3
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    #@46
    cmpg-double v1, p0, v2

    #@48
    if-gez v1, :cond_4

    #@4a
    const-string/jumbo v0, "%.5f"

    #@4d
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@4e
    .line 280
    .end local v0    # "format":Ljava/lang/String;
    :cond_4
    const-wide v2, 0x3fb999999999999aL    # 0.1

    #@53
    cmpg-double v1, p0, v2

    #@55
    if-gez v1, :cond_5

    #@57
    const-string/jumbo v0, "%.4f"

    #@5a
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@5b
    .line 281
    .end local v0    # "format":Ljava/lang/String;
    :cond_5
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    #@5d
    cmpg-double v1, p0, v2

    #@5f
    if-gez v1, :cond_6

    #@61
    const-string/jumbo v0, "%.3f"

    #@64
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@65
    .line 282
    .end local v0    # "format":Ljava/lang/String;
    :cond_6
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    #@67
    cmpg-double v1, p0, v2

    #@69
    if-gez v1, :cond_7

    #@6b
    const-string/jumbo v0, "%.2f"

    #@6e
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@6f
    .line 283
    .end local v0    # "format":Ljava/lang/String;
    :cond_7
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    #@71
    cmpg-double v1, p0, v2

    #@73
    if-gez v1, :cond_8

    #@75
    const-string/jumbo v0, "%.1f"

    #@78
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0

    #@79
    .line 284
    .end local v0    # "format":Ljava/lang/String;
    :cond_8
    const-string/jumbo v0, "%.0f"

    #@7c
    .restart local v0    # "format":Ljava/lang/String;
    goto :goto_0
.end method

.method private processAppUsage(Landroid/util/SparseArray;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 491
    .local p1, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v3, -0x1

    #@1
    move-object/from16 v0, p1

    #@3
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@6
    move-result-object v3

    #@7
    if-eqz v3, :cond_2

    #@9
    const/4 v15, 0x1

    #@a
    .line 492
    .local v15, "forAllUsers":Z
    :goto_0
    move-object/from16 v0, p0

    #@c
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    #@e
    move-object/from16 v0, p0

    #@10
    iput-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    #@12
    .line 494
    const/16 v18, 0x0

    #@14
    .line 495
    .local v18, "osSipper":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    #@16
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@18
    invoke-virtual {v3}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    #@1b
    move-result-object v22

    #@1c
    .line 496
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    #@1f
    move-result v2

    #@20
    .line 497
    .local v2, "NU":I
    const/16 v16, 0x0

    #@22
    .end local v18    # "osSipper":Lcom/android/internal/os/BatterySipper;
    .local v16, "iu":I
    :goto_1
    move/from16 v0, v16

    #@24
    if-ge v0, v2, :cond_7

    #@26
    .line 498
    move-object/from16 v0, v22

    #@28
    move/from16 v1, v16

    #@2a
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@2d
    move-result-object v5

    #@2e
    check-cast v5, Landroid/os/BatteryStats$Uid;

    #@30
    .line 499
    .local v5, "u":Landroid/os/BatteryStats$Uid;
    new-instance v4, Lcom/android/internal/os/BatterySipper;

    #@32
    sget-object v3, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    #@34
    const-wide/16 v6, 0x0

    #@36
    invoke-direct {v4, v3, v5, v6, v7}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@39
    .line 501
    .local v4, "app":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    #@3b
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@41
    move-object/from16 v0, p0

    #@43
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@45
    move-object/from16 v0, p0

    #@47
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@49
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@4c
    .line 502
    move-object/from16 v0, p0

    #@4e
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@50
    move-object/from16 v0, p0

    #@52
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@54
    move-object/from16 v0, p0

    #@56
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@58
    move-object/from16 v0, p0

    #@5a
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@5c
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@5f
    .line 503
    move-object/from16 v0, p0

    #@61
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    #@63
    move-object/from16 v0, p0

    #@65
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@67
    move-object/from16 v0, p0

    #@69
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@6f
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/MobileRadioPowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@72
    .line 504
    move-object/from16 v0, p0

    #@74
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@76
    move-object/from16 v0, p0

    #@78
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@7a
    move-object/from16 v0, p0

    #@7c
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@7e
    move-object/from16 v0, p0

    #@80
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@82
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@85
    .line 505
    move-object/from16 v0, p0

    #@87
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@89
    move-object/from16 v0, p0

    #@8b
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@8d
    move-object/from16 v0, p0

    #@8f
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@91
    move-object/from16 v0, p0

    #@93
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@95
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@98
    .line 506
    move-object/from16 v0, p0

    #@9a
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@a0
    move-object/from16 v0, p0

    #@a2
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@a4
    move-object/from16 v0, p0

    #@a6
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@a8
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@ab
    .line 507
    move-object/from16 v0, p0

    #@ad
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@b3
    move-object/from16 v0, p0

    #@b5
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@b7
    move-object/from16 v0, p0

    #@b9
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@bb
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@be
    .line 508
    move-object/from16 v0, p0

    #@c0
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@c6
    move-object/from16 v0, p0

    #@c8
    iget-wide v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@ce
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/os/PowerCalculator;->calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V

    #@d1
    .line 510
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    #@d4
    move-result-wide v20

    #@d5
    .line 517
    .local v20, "totalPower":D
    const-wide/16 v6, 0x0

    #@d7
    cmpl-double v3, v20, v6

    #@d9
    if-nez v3, :cond_0

    #@db
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@de
    move-result v3

    #@df
    if-nez v3, :cond_1

    #@e1
    .line 521
    :cond_0
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    #@e4
    move-result v19

    #@e5
    .line 522
    .local v19, "uid":I
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    #@e8
    move-result v23

    #@e9
    .line 523
    .local v23, "userId":I
    const/16 v3, 0x3f2

    #@eb
    move/from16 v0, v19

    #@ed
    if-ne v0, v3, :cond_3

    #@ef
    .line 524
    move-object/from16 v0, p0

    #@f1
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    #@f3
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@f6
    .line 540
    :goto_2
    if-nez v19, :cond_1

    #@f8
    .line 541
    move-object/from16 v18, v4

    #@fa
    .line 497
    .end local v19    # "uid":I
    .end local v23    # "userId":I
    :cond_1
    add-int/lit8 v16, v16, 0x1

    #@fc
    goto/16 :goto_1

    #@fe
    .line 491
    .end local v2    # "NU":I
    .end local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v15    # "forAllUsers":Z
    .end local v16    # "iu":I
    .end local v20    # "totalPower":D
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_2
    const/4 v15, 0x0

    #@ff
    .restart local v15    # "forAllUsers":Z
    goto/16 :goto_0

    #@101
    .line 525
    .restart local v2    # "NU":I
    .restart local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .restart local v5    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v16    # "iu":I
    .restart local v19    # "uid":I
    .restart local v20    # "totalPower":D
    .restart local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v23    # "userId":I
    :cond_3
    const/16 v3, 0x3ea

    #@103
    move/from16 v0, v19

    #@105
    if-ne v0, v3, :cond_4

    #@107
    .line 526
    move-object/from16 v0, p0

    #@109
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    #@10b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@10e
    goto :goto_2

    #@10f
    .line 527
    :cond_4
    if-nez v15, :cond_6

    #@111
    move-object/from16 v0, p1

    #@113
    move/from16 v1, v23

    #@115
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@118
    move-result-object v3

    #@119
    if-nez v3, :cond_6

    #@11b
    .line 528
    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getAppId(I)I

    #@11e
    move-result v3

    #@11f
    const/16 v6, 0x2710

    #@121
    if-lt v3, v6, :cond_6

    #@123
    .line 530
    move-object/from16 v0, p0

    #@125
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@127
    move/from16 v0, v23

    #@129
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@12c
    move-result-object v17

    #@12d
    check-cast v17, Ljava/util/List;

    #@12f
    .line 531
    .local v17, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-nez v17, :cond_5

    #@131
    .line 532
    new-instance v17, Ljava/util/ArrayList;

    #@133
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    #@136
    .line 533
    .restart local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    #@138
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@13a
    move/from16 v0, v23

    #@13c
    move-object/from16 v1, v17

    #@13e
    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@141
    .line 535
    :cond_5
    move-object/from16 v0, v17

    #@143
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@146
    goto :goto_2

    #@147
    .line 537
    .end local v17    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_6
    move-object/from16 v0, p0

    #@149
    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@14b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@14e
    goto :goto_2

    #@14f
    .line 546
    .end local v4    # "app":Lcom/android/internal/os/BatterySipper;
    .end local v5    # "u":Landroid/os/BatteryStats$Uid;
    .end local v19    # "uid":I
    .end local v20    # "totalPower":D
    .end local v23    # "userId":I
    :cond_7
    if-eqz v18, :cond_8

    #@151
    .line 550
    move-object/from16 v0, p0

    #@153
    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@155
    move-object/from16 v0, p0

    #@157
    iget-object v9, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@159
    move-object/from16 v0, p0

    #@15b
    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@15d
    .line 551
    move-object/from16 v0, p0

    #@15f
    iget-wide v12, v0, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@161
    move-object/from16 v0, p0

    #@163
    iget v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@165
    move-object/from16 v8, v18

    #@167
    .line 550
    invoke-virtual/range {v7 .. v14}, Lcom/android/internal/os/PowerCalculator;->calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V

    #@16a
    .line 552
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    #@16d
    .line 490
    :cond_8
    return-void
.end method

.method private processMiscUsage()V
    .locals 1

    #@0
    .prologue
    .line 663
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addUserUsage()V

    #@3
    .line 664
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addPhoneUsage()V

    #@6
    .line 665
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addScreenUsage()V

    #@9
    .line 666
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addWiFiUsage()V

    #@c
    .line 667
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addBluetoothUsage()V

    #@f
    .line 668
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addIdleUsage()V

    #@12
    .line 670
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiOnly:Z

    #@14
    if-nez v0, :cond_0

    #@16
    .line 671
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->addRadioUsage()V

    #@19
    .line 662
    :cond_0
    return-void
.end method

.method public static readFully(Ljava/io/FileInputStream;)[B
    .locals 1
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    #@3
    move-result v0

    #@4
    invoke-static {p0, v0}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;I)[B

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static readFully(Ljava/io/FileInputStream;I)[B
    .locals 6
    .param p0, "stream"    # Ljava/io/FileInputStream;
    .param p1, "avail"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 721
    const/4 v3, 0x0

    #@2
    .line 722
    .local v3, "pos":I
    new-array v1, p1, [B

    #@4
    .line 724
    .local v1, "data":[B
    :cond_0
    :goto_0
    array-length v4, v1

    #@5
    sub-int/2addr v4, v3

    #@6
    invoke-virtual {p0, v1, v3, v4}, Ljava/io/FileInputStream;->read([BII)I

    #@9
    move-result v0

    #@a
    .line 727
    .local v0, "amt":I
    if-gtz v0, :cond_1

    #@c
    .line 730
    return-object v1

    #@d
    .line 732
    :cond_1
    add-int/2addr v3, v0

    #@e
    .line 733
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    #@11
    move-result p1

    #@12
    .line 734
    array-length v4, v1

    #@13
    sub-int/2addr v4, v3

    #@14
    if-le p1, v4, :cond_0

    #@16
    .line 735
    add-int v4, v3, p1

    #@18
    new-array v2, v4, [B

    #@1a
    .line 736
    .local v2, "newData":[B
    invoke-static {v1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 737
    move-object v1, v2

    #@1e
    goto :goto_0
.end method

.method public static statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 192
    sget-object v8, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    #@2
    monitor-enter v8

    #@3
    .line 193
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    #@6
    move-result-object v5

    #@7
    .line 194
    .local v5, "path":Ljava/io/File;
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    #@9
    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v6

    #@d
    check-cast v6, Landroid/os/BatteryStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@f
    .line 195
    .local v6, "stats":Landroid/os/BatteryStats;
    if-eqz v6, :cond_0

    #@11
    monitor-exit v8

    #@12
    .line 196
    return-object v6

    #@13
    .line 198
    :cond_0
    const/4 v2, 0x0

    #@14
    .line 200
    .local v2, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    #@16
    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@19
    .line 201
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v3}, Lcom/android/internal/os/BatteryStatsHelper;->readFully(Ljava/io/FileInputStream;)[B

    #@1c
    move-result-object v0

    #@1d
    .line 202
    .local v0, "data":[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@20
    move-result-object v4

    #@21
    .line 203
    .local v4, "parcel":Landroid/os/Parcel;
    array-length v7, v0

    #@22
    const/4 v9, 0x0

    #@23
    invoke-virtual {v4, v0, v9, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    #@26
    .line 204
    const/4 v7, 0x0

    #@27
    invoke-virtual {v4, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    #@2a
    .line 205
    sget-object v7, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    invoke-interface {v7, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Landroid/os/BatteryStats;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@32
    .line 209
    if-eqz v3, :cond_1

    #@34
    .line 211
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@37
    :cond_1
    :goto_0
    monitor-exit v8

    #@38
    .line 205
    return-object v7

    #@39
    .line 212
    :catch_0
    move-exception v1

    #@3a
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0

    #@3b
    .line 206
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "parcel":Landroid/os/Parcel;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    #@3c
    .line 207
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_4
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    #@3e
    const-string/jumbo v9, "Unable to read history to file"

    #@41
    invoke-static {v7, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@44
    .line 209
    if-eqz v2, :cond_2

    #@46
    .line 211
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@49
    :cond_2
    :goto_2
    monitor-exit v8

    #@4a
    .line 218
    const-string/jumbo v7, "batterystats"

    #@4d
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@50
    move-result-object v7

    #@51
    .line 217
    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@54
    move-result-object v7

    #@55
    invoke-static {v7}, Lcom/android/internal/os/BatteryStatsHelper;->getStats(Lcom/android/internal/app/IBatteryStats;)Lcom/android/internal/os/BatteryStatsImpl;

    #@58
    move-result-object v7

    #@59
    return-object v7

    #@5a
    .line 212
    :catch_2
    move-exception v1

    #@5b
    goto :goto_2

    #@5c
    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@5d
    .line 209
    :goto_3
    if-eqz v2, :cond_3

    #@5f
    .line 211
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@62
    .line 208
    :cond_3
    :goto_4
    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@63
    .line 192
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stats":Landroid/os/BatteryStats;
    :catchall_1
    move-exception v7

    #@64
    monitor-exit v8

    #@65
    throw v7

    #@66
    .line 212
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stats":Landroid/os/BatteryStats;
    :catch_3
    move-exception v1

    #@67
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_4

    #@68
    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    #@69
    move-object v2, v3

    #@6a
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    goto :goto_3

    #@6b
    .line 206
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    #@6c
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v2, v3

    #@6d
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    #@0
    .prologue
    .line 231
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@3
    .line 230
    return-void
.end method

.method public create(Landroid/os/BatteryStats;)V
    .locals 2
    .param p1, "stats"    # Landroid/os/BatteryStats;

    #@0
    .prologue
    .line 253
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    #@2
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    #@4
    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    #@7
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@9
    .line 254
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@b
    .line 252
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 258
    if-eqz p1, :cond_0

    #@2
    .line 259
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    #@4
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@6
    .line 260
    sget-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    #@8
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    #@a
    .line 263
    :cond_0
    const-string/jumbo v0, "batterystats"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 262
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    #@17
    .line 264
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    #@19
    iget-object v1, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    #@1b
    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    #@1e
    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@20
    .line 257
    return-void
.end method

.method public getBatteryBroadcast()Landroid/content/Intent;
    .locals 1

    #@0
    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    #@2
    if-nez v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mCollectBatteryBroadcast:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 243
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    #@b
    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    #@d
    return-object v0
.end method

.method public getBatteryTimeRemaining()J
    .locals 2

    #@0
    .prologue
    .line 712
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    #@2
    return-wide v0
.end method

.method public getChargeTimeRemaining()J
    .locals 2

    #@0
    .prologue
    .line 714
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    #@2
    return-wide v0
.end method

.method public getComputedPower()D
    .locals 2

    #@0
    .prologue
    .line 702
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@2
    return-wide v0
.end method

.method public getMaxDrainedPower()D
    .locals 2

    #@0
    .prologue
    .line 709
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    #@2
    return-wide v0
.end method

.method public getMaxPower()D
    .locals 2

    #@0
    .prologue
    .line 696
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@2
    return-wide v0
.end method

.method public getMaxRealPower()D
    .locals 2

    #@0
    .prologue
    .line 698
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    #@2
    return-wide v0
.end method

.method public getMinDrainedPower()D
    .locals 2

    #@0
    .prologue
    .line 705
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    #@2
    return-wide v0
.end method

.method public getMobilemsppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    #@0
    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@2
    return-object v0
.end method

.method public getStats()Landroid/os/BatteryStats;
    .locals 1

    #@0
    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 236
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsHelper;->load()V

    #@7
    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@9
    return-object v0
.end method

.method public getStatsPeriod()J
    .locals 2

    #@0
    .prologue
    .line 692
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsPeriod:J

    #@2
    return-wide v0
.end method

.method public getStatsType()I
    .locals 1

    #@0
    .prologue
    .line 694
    iget v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@2
    return v0
.end method

.method public getTotalPower()D
    .locals 2

    #@0
    .prologue
    .line 700
    iget-wide v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    #@2
    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 685
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public refreshStats(II)V
    .locals 2
    .param p1, "statsType"    # I
    .param p2, "asUser"    # I

    #@0
    .prologue
    .line 294
    new-instance v0, Landroid/util/SparseArray;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@6
    .line 295
    .local v0, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    new-instance v1, Landroid/os/UserHandle;

    #@8
    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    #@b
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@e
    .line 296
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    #@11
    .line 293
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;)V
    .locals 8
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const-wide/16 v2, 0x3e8

    #@2
    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5
    move-result-wide v0

    #@6
    mul-long v4, v0, v2

    #@8
    .line 317
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@b
    move-result-wide v0

    #@c
    mul-long v6, v0, v2

    #@e
    move-object v1, p0

    #@f
    move v2, p1

    #@10
    move-object v3, p2

    #@11
    .line 316
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;JJ)V

    #@14
    .line 315
    return-void
.end method

.method public refreshStats(ILandroid/util/SparseArray;JJ)V
    .locals 19
    .param p1, "statsType"    # I
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/UserHandle;",
            ">;JJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p2, "asUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    #@3
    .line 325
    const-wide/16 v14, 0x0

    #@5
    move-object/from16 v0, p0

    #@7
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@9
    .line 326
    const-wide/16 v14, 0x0

    #@b
    move-object/from16 v0, p0

    #@d
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    #@f
    .line 327
    const-wide/16 v14, 0x0

    #@11
    move-object/from16 v0, p0

    #@13
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@15
    .line 328
    const-wide/16 v14, 0x0

    #@17
    move-object/from16 v0, p0

    #@19
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    #@1b
    .line 330
    move-object/from16 v0, p0

    #@1d
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@1f
    invoke-interface {v14}, Ljava/util/List;->clear()V

    #@22
    .line 331
    move-object/from16 v0, p0

    #@24
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    #@26
    invoke-interface {v14}, Ljava/util/List;->clear()V

    #@29
    .line 332
    move-object/from16 v0, p0

    #@2b
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    #@2d
    invoke-interface {v14}, Ljava/util/List;->clear()V

    #@30
    .line 333
    move-object/from16 v0, p0

    #@32
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@34
    invoke-virtual {v14}, Landroid/util/SparseArray;->clear()V

    #@37
    .line 334
    move-object/from16 v0, p0

    #@39
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    #@3b
    invoke-interface {v14}, Ljava/util/List;->clear()V

    #@3e
    .line 336
    move-object/from16 v0, p0

    #@40
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@42
    if-nez v14, :cond_0

    #@44
    .line 337
    return-void

    #@45
    .line 340
    :cond_0
    move-object/from16 v0, p0

    #@47
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@49
    if-nez v14, :cond_1

    #@4b
    .line 341
    new-instance v14, Lcom/android/internal/os/CpuPowerCalculator;

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@51
    invoke-direct {v14, v15}, Lcom/android/internal/os/CpuPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@54
    move-object/from16 v0, p0

    #@56
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@58
    .line 343
    :cond_1
    move-object/from16 v0, p0

    #@5a
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCpuPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@5c
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@5f
    .line 345
    move-object/from16 v0, p0

    #@61
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@63
    if-nez v14, :cond_2

    #@65
    .line 346
    new-instance v14, Lcom/android/internal/os/WakelockPowerCalculator;

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@6b
    invoke-direct {v14, v15}, Lcom/android/internal/os/WakelockPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@6e
    move-object/from16 v0, p0

    #@70
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@72
    .line 348
    :cond_2
    move-object/from16 v0, p0

    #@74
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWakelockPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@76
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@79
    .line 350
    move-object/from16 v0, p0

    #@7b
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    #@7d
    if-nez v14, :cond_3

    #@7f
    .line 351
    new-instance v14, Lcom/android/internal/os/MobileRadioPowerCalculator;

    #@81
    move-object/from16 v0, p0

    #@83
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@85
    move-object/from16 v0, p0

    #@87
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@89
    move-object/from16 v16, v0

    #@8b
    invoke-direct/range {v14 .. v16}, Lcom/android/internal/os/MobileRadioPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V

    #@8e
    move-object/from16 v0, p0

    #@90
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    #@92
    .line 353
    :cond_3
    move-object/from16 v0, p0

    #@94
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobileRadioPowerCalculator:Lcom/android/internal/os/MobileRadioPowerCalculator;

    #@96
    move-object/from16 v0, p0

    #@98
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@9a
    invoke-virtual {v14, v15}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset(Landroid/os/BatteryStats;)V

    #@9d
    .line 357
    move-object/from16 v0, p0

    #@9f
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@a5
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasWifiPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    #@a8
    move-result v8

    #@a9
    .line 358
    .local v8, "hasWifiPowerReporting":Z
    move-object/from16 v0, p0

    #@ab
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@ad
    if-eqz v14, :cond_4

    #@af
    move-object/from16 v0, p0

    #@b1
    iget-boolean v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    #@b3
    if-eq v8, v14, :cond_5

    #@b5
    .line 359
    :cond_4
    if-eqz v8, :cond_c

    #@b7
    .line 360
    new-instance v14, Lcom/android/internal/os/WifiPowerCalculator;

    #@b9
    move-object/from16 v0, p0

    #@bb
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@bd
    invoke-direct {v14, v15}, Lcom/android/internal/os/WifiPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@c0
    .line 359
    :goto_0
    move-object/from16 v0, p0

    #@c2
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@c4
    .line 362
    move-object/from16 v0, p0

    #@c6
    iput-boolean v8, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasWifiPowerReporting:Z

    #@c8
    .line 364
    :cond_5
    move-object/from16 v0, p0

    #@ca
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mWifiPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@cc
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@cf
    .line 366
    move-object/from16 v0, p0

    #@d1
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@d3
    .line 367
    move-object/from16 v0, p0

    #@d5
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@d7
    .line 366
    invoke-static {v14, v15}, Lcom/android/internal/os/BatteryStatsHelper;->checkHasBluetoothPowerReporting(Landroid/os/BatteryStats;Lcom/android/internal/os/PowerProfile;)Z

    #@da
    move-result v7

    #@db
    .line 368
    .local v7, "hasBluetoothPowerReporting":Z
    move-object/from16 v0, p0

    #@dd
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@df
    if-eqz v14, :cond_6

    #@e1
    .line 369
    move-object/from16 v0, p0

    #@e3
    iget-boolean v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    #@e5
    if-eq v7, v14, :cond_7

    #@e7
    .line 370
    :cond_6
    new-instance v14, Lcom/android/internal/os/BluetoothPowerCalculator;

    #@e9
    move-object/from16 v0, p0

    #@eb
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@ed
    invoke-direct {v14, v15}, Lcom/android/internal/os/BluetoothPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@f0
    move-object/from16 v0, p0

    #@f2
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@f4
    .line 371
    move-object/from16 v0, p0

    #@f6
    iput-boolean v7, v0, Lcom/android/internal/os/BatteryStatsHelper;->mHasBluetoothPowerReporting:Z

    #@f8
    .line 373
    :cond_7
    move-object/from16 v0, p0

    #@fa
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBluetoothPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@fc
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@ff
    .line 375
    move-object/from16 v0, p0

    #@101
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@103
    if-nez v14, :cond_8

    #@105
    .line 376
    new-instance v15, Lcom/android/internal/os/SensorPowerCalculator;

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@10b
    move-object/from16 v16, v0

    #@10d
    .line 377
    move-object/from16 v0, p0

    #@10f
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    #@111
    const-string/jumbo v17, "sensor"

    #@114
    move-object/from16 v0, v17

    #@116
    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@119
    move-result-object v14

    #@11a
    check-cast v14, Landroid/hardware/SensorManager;

    #@11c
    .line 376
    move-object/from16 v0, v16

    #@11e
    invoke-direct {v15, v0, v14}, Lcom/android/internal/os/SensorPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;Landroid/hardware/SensorManager;)V

    #@121
    move-object/from16 v0, p0

    #@123
    iput-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@125
    .line 379
    :cond_8
    move-object/from16 v0, p0

    #@127
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mSensorPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@129
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@12c
    .line 381
    move-object/from16 v0, p0

    #@12e
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@130
    if-nez v14, :cond_9

    #@132
    .line 382
    new-instance v14, Lcom/android/internal/os/CameraPowerCalculator;

    #@134
    move-object/from16 v0, p0

    #@136
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@138
    invoke-direct {v14, v15}, Lcom/android/internal/os/CameraPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@13b
    move-object/from16 v0, p0

    #@13d
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@13f
    .line 384
    :cond_9
    move-object/from16 v0, p0

    #@141
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mCameraPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@143
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@146
    .line 386
    move-object/from16 v0, p0

    #@148
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@14a
    if-nez v14, :cond_a

    #@14c
    .line 387
    new-instance v14, Lcom/android/internal/os/FlashlightPowerCalculator;

    #@14e
    move-object/from16 v0, p0

    #@150
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@152
    invoke-direct {v14, v15}, Lcom/android/internal/os/FlashlightPowerCalculator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@155
    move-object/from16 v0, p0

    #@157
    iput-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@159
    .line 389
    :cond_a
    move-object/from16 v0, p0

    #@15b
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mFlashlightPowerCalculator:Lcom/android/internal/os/PowerCalculator;

    #@15d
    invoke-virtual {v14}, Lcom/android/internal/os/PowerCalculator;->reset()V

    #@160
    .line 391
    move/from16 v0, p1

    #@162
    move-object/from16 v1, p0

    #@164
    iput v0, v1, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@166
    .line 392
    move-wide/from16 v0, p5

    #@168
    move-object/from16 v2, p0

    #@16a
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mRawUptime:J

    #@16c
    .line 393
    move-wide/from16 v0, p3

    #@16e
    move-object/from16 v2, p0

    #@170
    iput-wide v0, v2, Lcom/android/internal/os/BatteryStatsHelper;->mRawRealtime:J

    #@172
    .line 394
    move-object/from16 v0, p0

    #@174
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@176
    move-wide/from16 v0, p5

    #@178
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    #@17b
    move-result-wide v14

    #@17c
    move-object/from16 v0, p0

    #@17e
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryUptime:J

    #@180
    .line 395
    move-object/from16 v0, p0

    #@182
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@184
    move-wide/from16 v0, p3

    #@186
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->getBatteryRealtime(J)J

    #@189
    move-result-wide v14

    #@18a
    move-object/from16 v0, p0

    #@18c
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryRealtime:J

    #@18e
    .line 396
    move-object/from16 v0, p0

    #@190
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@192
    move-object/from16 v0, p0

    #@194
    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@196
    move-wide/from16 v0, p5

    #@198
    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    #@19b
    move-result-wide v14

    #@19c
    move-object/from16 v0, p0

    #@19e
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryUptime:J

    #@1a0
    .line 397
    move-object/from16 v0, p0

    #@1a2
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    iget v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStatsType:I

    #@1a8
    move-wide/from16 v0, p3

    #@1aa
    invoke-virtual {v14, v0, v1, v15}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    #@1ad
    move-result-wide v14

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTypeBatteryRealtime:J

    #@1b2
    .line 398
    move-object/from16 v0, p0

    #@1b4
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@1b6
    move-wide/from16 v0, p3

    #@1b8
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    #@1bb
    move-result-wide v14

    #@1bc
    move-object/from16 v0, p0

    #@1be
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryTimeRemaining:J

    #@1c0
    .line 399
    move-object/from16 v0, p0

    #@1c2
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@1c4
    move-wide/from16 v0, p3

    #@1c6
    invoke-virtual {v14, v0, v1}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    #@1c9
    move-result-wide v14

    #@1ca
    move-object/from16 v0, p0

    #@1cc
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mChargeTimeRemaining:J

    #@1ce
    .line 409
    move-object/from16 v0, p0

    #@1d0
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@1d2
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@1d5
    move-result v14

    #@1d6
    int-to-double v14, v14

    #@1d7
    .line 410
    move-object/from16 v0, p0

    #@1d9
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@1db
    move-object/from16 v16, v0

    #@1dd
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    #@1e0
    move-result-wide v16

    #@1e1
    .line 409
    mul-double v14, v14, v16

    #@1e3
    .line 410
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    #@1e5
    .line 409
    div-double v14, v14, v16

    #@1e7
    move-object/from16 v0, p0

    #@1e9
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    #@1eb
    .line 411
    move-object/from16 v0, p0

    #@1ed
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@1ef
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    #@1f2
    move-result v14

    #@1f3
    int-to-double v14, v14

    #@1f4
    .line 412
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@1f8
    move-object/from16 v16, v0

    #@1fa
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    #@1fd
    move-result-wide v16

    #@1fe
    .line 411
    mul-double v14, v14, v16

    #@200
    .line 412
    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    #@202
    .line 411
    div-double v14, v14, v16

    #@204
    move-object/from16 v0, p0

    #@206
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    #@208
    .line 414
    move-object/from16 v0, p0

    #@20a
    move-object/from16 v1, p2

    #@20c
    invoke-direct {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->processAppUsage(Landroid/util/SparseArray;)V

    #@20f
    .line 417
    const/4 v9, 0x0

    #@210
    .local v9, "i":I
    :goto_1
    move-object/from16 v0, p0

    #@212
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@214
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@217
    move-result v14

    #@218
    if-ge v9, v14, :cond_d

    #@21a
    .line 418
    move-object/from16 v0, p0

    #@21c
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@21e
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@221
    move-result-object v6

    #@222
    check-cast v6, Lcom/android/internal/os/BatterySipper;

    #@224
    .line 419
    .local v6, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    #@227
    .line 420
    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    #@229
    const-wide/16 v16, 0x0

    #@22b
    cmpl-double v14, v14, v16

    #@22d
    if-eqz v14, :cond_b

    #@22f
    .line 421
    move-object/from16 v0, p0

    #@231
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    #@233
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@236
    .line 417
    :cond_b
    add-int/lit8 v9, v9, 0x1

    #@238
    goto :goto_1

    #@239
    .line 361
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "hasBluetoothPowerReporting":Z
    .end local v9    # "i":I
    :cond_c
    new-instance v14, Lcom/android/internal/os/WifiPowerEstimator;

    #@23b
    move-object/from16 v0, p0

    #@23d
    iget-object v15, v0, Lcom/android/internal/os/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    #@23f
    invoke-direct {v14, v15}, Lcom/android/internal/os/WifiPowerEstimator;-><init>(Lcom/android/internal/os/PowerProfile;)V

    #@242
    goto/16 :goto_0

    #@244
    .line 425
    .restart local v7    # "hasBluetoothPowerReporting":Z
    .restart local v9    # "i":I
    :cond_d
    const/4 v9, 0x0

    #@245
    :goto_2
    move-object/from16 v0, p0

    #@247
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@249
    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    #@24c
    move-result v14

    #@24d
    if-ge v9, v14, :cond_10

    #@24f
    .line 426
    move-object/from16 v0, p0

    #@251
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    #@253
    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@256
    move-result-object v13

    #@257
    check-cast v13, Ljava/util/List;

    #@259
    .line 427
    .local v13, "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v11, 0x0

    #@25a
    .local v11, "j":I
    :goto_3
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@25d
    move-result v14

    #@25e
    if-ge v11, v14, :cond_f

    #@260
    .line 428
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@263
    move-result-object v6

    #@264
    check-cast v6, Lcom/android/internal/os/BatterySipper;

    #@266
    .line 429
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->computeMobilemspp()V

    #@269
    .line 430
    iget-wide v14, v6, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    #@26b
    const-wide/16 v16, 0x0

    #@26d
    cmpl-double v14, v14, v16

    #@26f
    if-eqz v14, :cond_e

    #@271
    .line 431
    move-object/from16 v0, p0

    #@273
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    #@275
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@278
    .line 427
    :cond_e
    add-int/lit8 v11, v11, 0x1

    #@27a
    goto :goto_3

    #@27b
    .line 425
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_f
    add-int/lit8 v9, v9, 0x1

    #@27d
    goto :goto_2

    #@27e
    .line 435
    .end local v11    # "j":I
    .end local v13    # "user":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_10
    move-object/from16 v0, p0

    #@280
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMobilemsppList:Ljava/util/List;

    #@282
    new-instance v15, Lcom/android/internal/os/BatteryStatsHelper$1;

    #@284
    move-object/from16 v0, p0

    #@286
    invoke-direct {v15, v0}, Lcom/android/internal/os/BatteryStatsHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsHelper;)V

    #@289
    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@28c
    .line 442
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsHelper;->processMiscUsage()V

    #@28f
    .line 444
    move-object/from16 v0, p0

    #@291
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@293
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@296
    .line 448
    move-object/from16 v0, p0

    #@298
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@29a
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    #@29d
    move-result v14

    #@29e
    if-nez v14, :cond_11

    #@2a0
    .line 449
    move-object/from16 v0, p0

    #@2a2
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@2a4
    const/4 v15, 0x0

    #@2a5
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2a8
    move-result-object v14

    #@2a9
    check-cast v14, Lcom/android/internal/os/BatterySipper;

    #@2ab
    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@2ad
    move-object/from16 v0, p0

    #@2af
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@2b1
    move-object/from16 v0, p0

    #@2b3
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxRealPower:D

    #@2b5
    .line 450
    move-object/from16 v0, p0

    #@2b7
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@2b9
    invoke-interface {v14}, Ljava/util/List;->size()I

    #@2bc
    move-result v12

    #@2bd
    .line 451
    .local v12, "usageListCount":I
    const/4 v9, 0x0

    #@2be
    :goto_4
    if-ge v9, v12, :cond_11

    #@2c0
    .line 452
    move-object/from16 v0, p0

    #@2c2
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@2c4
    move-wide/from16 v16, v0

    #@2c6
    move-object/from16 v0, p0

    #@2c8
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@2ca
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2cd
    move-result-object v14

    #@2ce
    check-cast v14, Lcom/android/internal/os/BatterySipper;

    #@2d0
    iget-wide v14, v14, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@2d2
    add-double v14, v14, v16

    #@2d4
    move-object/from16 v0, p0

    #@2d6
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@2d8
    .line 451
    add-int/lit8 v9, v9, 0x1

    #@2da
    goto :goto_4

    #@2db
    .line 461
    .end local v12    # "usageListCount":I
    :cond_11
    move-object/from16 v0, p0

    #@2dd
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@2df
    move-object/from16 v0, p0

    #@2e1
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    #@2e3
    .line 462
    move-object/from16 v0, p0

    #@2e5
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@2e7
    invoke-virtual {v14}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    #@2ea
    move-result v14

    #@2eb
    const/4 v15, 0x1

    #@2ec
    if-le v14, v15, :cond_13

    #@2ee
    .line 463
    move-object/from16 v0, p0

    #@2f0
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    #@2f2
    move-object/from16 v0, p0

    #@2f4
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@2f6
    move-wide/from16 v16, v0

    #@2f8
    cmpl-double v14, v14, v16

    #@2fa
    if-lez v14, :cond_14

    #@2fc
    .line 464
    move-object/from16 v0, p0

    #@2fe
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    #@300
    move-object/from16 v0, p0

    #@302
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@304
    move-wide/from16 v16, v0

    #@306
    sub-double v4, v14, v16

    #@308
    .line 465
    .local v4, "amount":D
    move-object/from16 v0, p0

    #@30a
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMinDrainedPower:D

    #@30c
    move-object/from16 v0, p0

    #@30e
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mTotalPower:D

    #@310
    .line 466
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    #@312
    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@314
    const/4 v15, 0x0

    #@315
    invoke-direct {v6, v14, v15, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@318
    .line 469
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    #@31a
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@31c
    invoke-static {v14, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@31f
    move-result v10

    #@320
    .line 470
    .local v10, "index":I
    if-gez v10, :cond_12

    #@322
    .line 471
    add-int/lit8 v14, v10, 0x1

    #@324
    neg-int v10, v14

    #@325
    .line 473
    :cond_12
    move-object/from16 v0, p0

    #@327
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@329
    invoke-interface {v14, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@32c
    .line 474
    move-object/from16 v0, p0

    #@32e
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@330
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    #@333
    move-result-wide v14

    #@334
    move-object/from16 v0, p0

    #@336
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@338
    .line 321
    .end local v4    # "amount":D
    .end local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v10    # "index":I
    :cond_13
    :goto_5
    return-void

    #@339
    .line 475
    :cond_14
    move-object/from16 v0, p0

    #@33b
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    #@33d
    move-object/from16 v0, p0

    #@33f
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@341
    move-wide/from16 v16, v0

    #@343
    cmpg-double v14, v14, v16

    #@345
    if-gez v14, :cond_13

    #@347
    .line 476
    move-object/from16 v0, p0

    #@349
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mComputedPower:D

    #@34b
    move-object/from16 v0, p0

    #@34d
    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxDrainedPower:D

    #@34f
    move-wide/from16 v16, v0

    #@351
    sub-double v4, v14, v16

    #@353
    .line 479
    .restart local v4    # "amount":D
    new-instance v6, Lcom/android/internal/os/BatterySipper;

    #@355
    sget-object v14, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@357
    const/4 v15, 0x0

    #@358
    invoke-direct {v6, v14, v15, v4, v5}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    #@35b
    .line 480
    .restart local v6    # "bs":Lcom/android/internal/os/BatterySipper;
    move-object/from16 v0, p0

    #@35d
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@35f
    invoke-static {v14, v6}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    #@362
    move-result v10

    #@363
    .line 481
    .restart local v10    # "index":I
    if-gez v10, :cond_15

    #@365
    .line 482
    add-int/lit8 v14, v10, 0x1

    #@367
    neg-int v10, v14

    #@368
    .line 484
    :cond_15
    move-object/from16 v0, p0

    #@36a
    iget-object v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    #@36c
    invoke-interface {v14, v10, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@36f
    .line 485
    move-object/from16 v0, p0

    #@371
    iget-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@373
    invoke-static {v14, v15, v4, v5}, Ljava/lang/Math;->max(DD)D

    #@376
    move-result-wide v14

    #@377
    move-object/from16 v0, p0

    #@379
    iput-wide v14, v0, Lcom/android/internal/os/BatteryStatsHelper;->mMaxPower:D

    #@37b
    goto :goto_5
.end method

.method public refreshStats(ILjava/util/List;)V
    .locals 5
    .param p1, "statsType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/os/UserHandle;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    .local p2, "asUsers":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {p2}, Ljava/util/List;->size()I

    #@3
    move-result v1

    #@4
    .line 304
    .local v1, "n":I
    new-instance v3, Landroid/util/SparseArray;

    #@6
    invoke-direct {v3, v1}, Landroid/util/SparseArray;-><init>(I)V

    #@9
    .line 305
    .local v3, "users":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/UserHandle;>;"
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    #@c
    .line 306
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v2

    #@10
    check-cast v2, Landroid/os/UserHandle;

    #@12
    .line 307
    .local v2, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    #@15
    move-result v4

    #@16
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@19
    .line 305
    add-int/lit8 v0, v0, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 309
    .end local v2    # "userHandle":Landroid/os/UserHandle;
    :cond_0
    invoke-virtual {p0, p1, v3}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILandroid/util/SparseArray;)V

    #@1f
    .line 302
    return-void
.end method

.method public storeState()V
    .locals 1

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mStats:Landroid/os/BatteryStats;

    #@2
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sStatsXfer:Landroid/os/BatteryStats;

    #@4
    .line 269
    iget-object v0, p0, Lcom/android/internal/os/BatteryStatsHelper;->mBatteryBroadcast:Landroid/content/Intent;

    #@6
    sput-object v0, Lcom/android/internal/os/BatteryStatsHelper;->sBatteryBroadcastXfer:Landroid/content/Intent;

    #@8
    .line 267
    return-void
.end method

.method public storeStatsHistoryInFile(Ljava/lang/String;)V
    .locals 9
    .param p1, "fname"    # Ljava/lang/String;

    #@0
    .prologue
    .line 168
    sget-object v7, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    #@2
    monitor-enter v7

    #@3
    .line 169
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/os/BatteryStatsHelper;->mContext:Landroid/content/Context;

    #@5
    invoke-static {v6, p1}, Lcom/android/internal/os/BatteryStatsHelper;->makeFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    #@8
    move-result-object v5

    #@9
    .line 170
    .local v5, "path":Ljava/io/File;
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->sFileXfer:Landroid/util/ArrayMap;

    #@b
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    #@e
    move-result-object v8

    #@f
    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@12
    .line 171
    const/4 v1, 0x0

    #@13
    .line 173
    .local v1, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/FileOutputStream;

    #@15
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    .line 174
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .local v2, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@1b
    move-result-object v3

    #@1c
    .line 175
    .local v3, "hist":Landroid/os/Parcel;
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    #@1f
    move-result-object v6

    #@20
    const/4 v8, 0x0

    #@21
    invoke-virtual {v6, v3, v8}, Landroid/os/BatteryStats;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    #@24
    .line 176
    invoke-virtual {v3}, Landroid/os/Parcel;->marshall()[B

    #@27
    move-result-object v4

    #@28
    .line 177
    .local v4, "histData":[B
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@2b
    .line 181
    if-eqz v2, :cond_0

    #@2d
    .line 183
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@30
    :cond_0
    :goto_0
    move-object v1, v2

    #@31
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    :cond_1
    :goto_1
    monitor-exit v7

    #@32
    .line 167
    return-void

    #@33
    .line 184
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "hist":Landroid/os/Parcel;
    .restart local v4    # "histData":[B
    :catch_0
    move-exception v0

    #@34
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0

    #@35
    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .end local v3    # "hist":Landroid/os/Parcel;
    .end local v4    # "histData":[B
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    #@36
    .line 179
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    sget-object v6, Lcom/android/internal/os/BatteryStatsHelper;->TAG:Ljava/lang/String;

    #@38
    const-string/jumbo v8, "Unable to write history to file"

    #@3b
    invoke-static {v6, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@3e
    .line 181
    if-eqz v1, :cond_1

    #@40
    .line 183
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@43
    goto :goto_1

    #@44
    .line 184
    :catch_2
    move-exception v0

    #@45
    goto :goto_1

    #@46
    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    #@47
    .line 181
    :goto_3
    if-eqz v1, :cond_2

    #@49
    .line 183
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    #@4c
    .line 180
    :cond_2
    :goto_4
    :try_start_7
    throw v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@4d
    .line 168
    .end local v5    # "path":Ljava/io/File;
    :catchall_1
    move-exception v6

    #@4e
    monitor-exit v7

    #@4f
    throw v6

    #@50
    .line 184
    .restart local v5    # "path":Ljava/io/File;
    :catch_3
    move-exception v0

    #@51
    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_4

    #@52
    .line 180
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v6

    #@53
    move-object v1, v2

    #@54
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .local v1, "fout":Ljava/io/FileOutputStream;
    goto :goto_3

    #@55
    .line 178
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "fout":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    #@56
    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    #@57
    .end local v2    # "fout":Ljava/io/FileOutputStream;
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
