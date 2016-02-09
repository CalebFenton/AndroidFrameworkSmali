.class public Lcom/android/internal/os/MobileRadioPowerCalculator;
.super Lcom/android/internal/os/PowerCalculator;
.source "MobileRadioPowerCalculator.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MobileRadioPowerController"


# instance fields
.field private final mPowerBins:[D

.field private final mPowerRadioOn:D

.field private final mPowerScan:D

.field private mStats:Landroid/os/BatteryStats;

.field private mTotalAppMobileActiveMs:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/PowerProfile;Landroid/os/BatteryStats;)V
    .locals 4
    .param p1, "profile"    # Lcom/android/internal/os/PowerProfile;
    .param p2, "stats"    # Landroid/os/BatteryStats;

    #@0
    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/os/PowerCalculator;-><init>()V

    #@3
    .line 26
    const/4 v1, 0x5

    #@4
    new-array v1, v1, [D

    #@6
    iput-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    #@8
    .line 29
    const-wide/16 v2, 0x0

    #@a
    iput-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    #@c
    .line 53
    const-string/jumbo v1, "radio.active"

    #@f
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@12
    move-result-wide v2

    #@13
    iput-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    #@15
    .line 54
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    #@18
    array-length v1, v1

    #@19
    if-ge v0, v1, :cond_0

    #@1b
    .line 55
    iget-object v1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    #@1d
    const-string/jumbo v2, "radio.on"

    #@20
    invoke-virtual {p1, v2, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    #@23
    move-result-wide v2

    #@24
    aput-wide v2, v1, v0

    #@26
    .line 54
    add-int/lit8 v0, v0, 0x1

    #@28
    goto :goto_0

    #@29
    .line 57
    :cond_0
    const-string/jumbo v1, "radio.scanning"

    #@2c
    invoke-virtual {p1, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    #@2f
    move-result-wide v2

    #@30
    iput-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    #@32
    .line 58
    iput-object p2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    #@34
    .line 52
    return-void
.end method

.method private getMobilePowerPerPacket(JI)D
    .locals 23
    .param p1, "rawRealtimeUs"    # J
    .param p3, "statsType"    # I

    #@0
    .prologue
    .line 35
    const-wide/32 v4, 0x30d40

    #@3
    .line 36
    .local v4, "MOBILE_BPS":J
    move-object/from16 v0, p0

    #@5
    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    #@7
    move-wide/from16 v18, v0

    #@9
    const-wide v20, 0x40ac200000000000L    # 3600.0

    #@e
    div-double v6, v18, v20

    #@10
    .line 38
    .local v6, "MOBILE_POWER":D
    move-object/from16 v0, p0

    #@12
    iget-object v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    #@14
    move-object/from16 v18, v0

    #@16
    const/16 v19, 0x0

    #@18
    move-object/from16 v0, v18

    #@1a
    move/from16 v1, v19

    #@1c
    move/from16 v2, p3

    #@1e
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@21
    move-result-wide v12

    #@22
    .line 40
    .local v12, "mobileRx":J
    move-object/from16 v0, p0

    #@24
    iget-object v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    #@26
    move-object/from16 v18, v0

    #@28
    const/16 v19, 0x1

    #@2a
    move-object/from16 v0, v18

    #@2c
    move/from16 v1, v19

    #@2e
    move/from16 v2, p3

    #@30
    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    #@33
    move-result-wide v14

    #@34
    .line 42
    .local v14, "mobileTx":J
    add-long v8, v12, v14

    #@36
    .line 45
    .local v8, "mobileData":J
    move-object/from16 v0, p0

    #@38
    iget-object v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    #@3a
    move-object/from16 v18, v0

    #@3c
    move-object/from16 v0, v18

    #@3e
    move-wide/from16 v1, p1

    #@40
    move/from16 v3, p3

    #@42
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    #@45
    move-result-wide v18

    #@46
    const-wide/16 v20, 0x3e8

    #@48
    div-long v16, v18, v20

    #@4a
    .line 46
    .local v16, "radioDataUptimeMs":J
    const-wide/16 v18, 0x0

    #@4c
    cmp-long v18, v8, v18

    #@4e
    if-eqz v18, :cond_0

    #@50
    const-wide/16 v18, 0x0

    #@52
    cmp-long v18, v16, v18

    #@54
    if-eqz v18, :cond_0

    #@56
    .line 47
    long-to-double v0, v8

    #@57
    move-wide/from16 v18, v0

    #@59
    move-wide/from16 v0, v16

    #@5b
    long-to-double v0, v0

    #@5c
    move-wide/from16 v20, v0

    #@5e
    div-double v10, v18, v20

    #@60
    .line 49
    .local v10, "mobilePps":D
    :goto_0
    div-double v18, v6, v10

    #@62
    const-wide v20, 0x40ac200000000000L    # 3600.0

    #@67
    div-double v18, v18, v20

    #@69
    return-wide v18

    #@6a
    .line 48
    .end local v10    # "mobilePps":D
    :cond_0
    const-wide v10, 0x40286a0000000000L    # 12.20703125

    #@6f
    .restart local v10    # "mobilePps":D
    goto :goto_0
.end method


# virtual methods
.method public calculateApp(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats$Uid;JJI)V
    .locals 7
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "u"    # Landroid/os/BatteryStats$Uid;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 65
    invoke-virtual {p2, v4, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@5
    move-result-wide v0

    #@6
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@8
    .line 67
    invoke-virtual {p2, v5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@e
    .line 69
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    #@11
    move-result-wide v0

    #@12
    const-wide/16 v2, 0x3e8

    #@14
    div-long/2addr v0, v2

    #@15
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@17
    .line 70
    invoke-virtual {p2, p7}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    #@1a
    move-result v0

    #@1b
    iput v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@1d
    .line 71
    invoke-virtual {p2, v4, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@20
    move-result-wide v0

    #@21
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    #@23
    .line 73
    invoke-virtual {p2, v5, p7}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    #@26
    move-result-wide v0

    #@27
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    #@29
    .line 76
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@2b
    const-wide/16 v2, 0x0

    #@2d
    cmp-long v0, v0, v2

    #@2f
    if-lez v0, :cond_0

    #@31
    .line 79
    iget-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    #@33
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@35
    add-long/2addr v0, v2

    #@36
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    #@38
    .line 80
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@3a
    long-to-double v0, v0

    #@3b
    iget-wide v2, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    #@3d
    mul-double/2addr v0, v2

    #@3e
    const-wide v2, 0x414b774000000000L    # 3600000.0

    #@43
    div-double/2addr v0, v2

    #@44
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@46
    .line 63
    :goto_0
    return-void

    #@47
    .line 84
    :cond_0
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@49
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@4b
    add-long/2addr v0, v2

    #@4c
    long-to-double v0, v0

    #@4d
    .line 85
    invoke-direct {p0, p3, p4, p7}, Lcom/android/internal/os/MobileRadioPowerCalculator;->getMobilePowerPerPacket(JI)D

    #@50
    move-result-wide v2

    #@51
    .line 84
    mul-double/2addr v0, v2

    #@52
    iput-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@54
    goto :goto_0
.end method

.method public calculateRemaining(Lcom/android/internal/os/BatterySipper;Landroid/os/BatteryStats;JJI)V
    .locals 27
    .param p1, "app"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "stats"    # Landroid/os/BatteryStats;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "rawUptimeUs"    # J
    .param p7, "statsType"    # I

    #@0
    .prologue
    .line 98
    const-wide/16 v10, 0x0

    #@2
    .line 99
    .local v10, "power":D
    const-wide/16 v18, 0x0

    #@4
    .line 100
    .local v18, "signalTimeMs":J
    const-wide/16 v6, 0x0

    #@6
    .line 101
    .local v6, "noCoverageTimeMs":J
    const/4 v4, 0x0

    #@7
    .local v4, "i":I
    :goto_0
    move-object/from16 v0, p0

    #@9
    iget-object v5, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    #@b
    array-length v5, v5

    #@c
    if-ge v4, v5, :cond_1

    #@e
    .line 102
    move-object/from16 v0, p2

    #@10
    move-wide/from16 v1, p3

    #@12
    move/from16 v3, p7

    #@14
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    #@17
    move-result-wide v22

    #@18
    .line 103
    const-wide/16 v24, 0x3e8

    #@1a
    .line 102
    div-long v20, v22, v24

    #@1c
    .line 104
    .local v20, "strengthTimeMs":J
    move-wide/from16 v0, v20

    #@1e
    long-to-double v0, v0

    #@1f
    move-wide/from16 v22, v0

    #@21
    move-object/from16 v0, p0

    #@23
    iget-object v5, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerBins:[D

    #@25
    aget-wide v24, v5, v4

    #@27
    mul-double v22, v22, v24

    #@29
    const-wide v24, 0x414b774000000000L    # 3600000.0

    #@2e
    div-double v8, v22, v24

    #@30
    .line 109
    .local v8, "p":D
    add-double/2addr v10, v8

    #@31
    .line 110
    add-long v18, v18, v20

    #@33
    .line 111
    if-nez v4, :cond_0

    #@35
    .line 112
    move-wide/from16 v6, v20

    #@37
    .line 101
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 116
    .end local v8    # "p":D
    .end local v20    # "strengthTimeMs":J
    :cond_1
    move-object/from16 v0, p2

    #@3c
    move-wide/from16 v1, p3

    #@3e
    move/from16 v3, p7

    #@40
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    #@43
    move-result-wide v22

    #@44
    .line 117
    const-wide/16 v24, 0x3e8

    #@46
    .line 116
    div-long v16, v22, v24

    #@48
    .line 118
    .local v16, "scanningTimeMs":J
    move-wide/from16 v0, v16

    #@4a
    long-to-double v0, v0

    #@4b
    move-wide/from16 v22, v0

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerScan:D

    #@51
    move-wide/from16 v24, v0

    #@53
    mul-double v22, v22, v24

    #@55
    const-wide v24, 0x414b774000000000L    # 3600000.0

    #@5a
    div-double v8, v22, v24

    #@5c
    .line 123
    .restart local v8    # "p":D
    add-double/2addr v10, v8

    #@5d
    .line 124
    move-object/from16 v0, p0

    #@5f
    iget-object v5, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    #@61
    move-wide/from16 v0, p3

    #@63
    move/from16 v2, p7

    #@65
    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    #@68
    move-result-wide v22

    #@69
    const-wide/16 v24, 0x3e8

    #@6b
    div-long v12, v22, v24

    #@6d
    .line 125
    .local v12, "radioActiveTimeMs":J
    move-object/from16 v0, p0

    #@6f
    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    #@71
    move-wide/from16 v22, v0

    #@73
    sub-long v14, v12, v22

    #@75
    .line 126
    .local v14, "remainingActiveTimeMs":J
    const-wide/16 v22, 0x0

    #@77
    cmp-long v5, v14, v22

    #@79
    if-lez v5, :cond_2

    #@7b
    .line 127
    move-object/from16 v0, p0

    #@7d
    iget-wide v0, v0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mPowerRadioOn:D

    #@7f
    move-wide/from16 v22, v0

    #@81
    long-to-double v0, v14

    #@82
    move-wide/from16 v24, v0

    #@84
    mul-double v22, v22, v24

    #@86
    const-wide v24, 0x414b774000000000L    # 3600000.0

    #@8b
    div-double v22, v22, v24

    #@8d
    add-double v10, v10, v22

    #@8f
    .line 130
    :cond_2
    const-wide/16 v22, 0x0

    #@91
    cmpl-double v5, v10, v22

    #@93
    if-eqz v5, :cond_4

    #@95
    .line 131
    const-wide/16 v22, 0x0

    #@97
    cmp-long v5, v18, v22

    #@99
    if-eqz v5, :cond_3

    #@9b
    .line 132
    long-to-double v0, v6

    #@9c
    move-wide/from16 v22, v0

    #@9e
    const-wide/high16 v24, 0x4059000000000000L    # 100.0

    #@a0
    mul-double v22, v22, v24

    #@a2
    move-wide/from16 v0, v18

    #@a4
    long-to-double v0, v0

    #@a5
    move-wide/from16 v24, v0

    #@a7
    div-double v22, v22, v24

    #@a9
    move-wide/from16 v0, v22

    #@ab
    move-object/from16 v2, p1

    #@ad
    iput-wide v0, v2, Lcom/android/internal/os/BatterySipper;->noCoveragePercent:D

    #@af
    .line 134
    :cond_3
    move-object/from16 v0, p1

    #@b1
    iput-wide v14, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@b3
    .line 135
    move-object/from16 v0, p2

    #@b5
    move/from16 v1, p7

    #@b7
    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownCount(I)I

    #@ba
    move-result v5

    #@bb
    move-object/from16 v0, p1

    #@bd
    iput v5, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@bf
    .line 136
    move-object/from16 v0, p1

    #@c1
    iput-wide v10, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@c3
    .line 97
    :cond_4
    return-void
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 142
    const-wide/16 v0, 0x0

    #@2
    iput-wide v0, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mTotalAppMobileActiveMs:J

    #@4
    .line 141
    return-void
.end method

.method public reset(Landroid/os/BatteryStats;)V
    .locals 0
    .param p1, "stats"    # Landroid/os/BatteryStats;

    #@0
    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/android/internal/os/MobileRadioPowerCalculator;->reset()V

    #@3
    .line 147
    iput-object p1, p0, Lcom/android/internal/os/MobileRadioPowerCalculator;->mStats:Landroid/os/BatteryStats;

    #@5
    .line 145
    return-void
.end method
