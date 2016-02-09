.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public sensorPowerMah:D

.field public totalPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .locals 1
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "value"    # D

    #@0
    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 91
    iput-wide p3, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@5
    .line 92
    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@7
    .line 93
    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@9
    .line 90
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    #@0
    .prologue
    .line 135
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@2
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@4
    add-double/2addr v0, v2

    #@5
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@7
    .line 136
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    #@9
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    #@b
    add-long/2addr v0, v2

    #@c
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    #@e
    .line 137
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@10
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@12
    add-double/2addr v0, v2

    #@13
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@15
    .line 138
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@17
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@19
    add-long/2addr v0, v2

    #@1a
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    #@1c
    .line 139
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    #@1e
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    #@20
    add-long/2addr v0, v2

    #@21
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    #@23
    .line 140
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@25
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@27
    add-long/2addr v0, v2

    #@28
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    #@2a
    .line 141
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@2c
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@2e
    add-long/2addr v0, v2

    #@2f
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    #@31
    .line 142
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@33
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@35
    add-long/2addr v0, v2

    #@36
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    #@38
    .line 143
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    #@3a
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    #@3c
    add-long/2addr v0, v2

    #@3d
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    #@3f
    .line 144
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    #@41
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    #@43
    add-long/2addr v0, v2

    #@44
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    #@46
    .line 145
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@48
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@4a
    add-long/2addr v0, v2

    #@4b
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@4d
    .line 146
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@4f
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@51
    add-long/2addr v0, v2

    #@52
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@54
    .line 147
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@56
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@58
    add-long/2addr v0, v2

    #@59
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@5b
    .line 148
    iget v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@5d
    iget v1, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@5f
    add-int/2addr v0, v1

    #@60
    iput v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    #@62
    .line 149
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@64
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@66
    add-long/2addr v0, v2

    #@67
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    #@69
    .line 150
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@6b
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@6d
    add-long/2addr v0, v2

    #@6e
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    #@70
    .line 151
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    #@72
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    #@74
    add-long/2addr v0, v2

    #@75
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    #@77
    .line 152
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    #@79
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    #@7b
    add-long/2addr v0, v2

    #@7c
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    #@7e
    .line 153
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    #@80
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    #@82
    add-long/2addr v0, v2

    #@83
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    #@85
    .line 154
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    #@87
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    #@89
    add-long/2addr v0, v2

    #@8a
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    #@8c
    .line 155
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@8e
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@90
    add-double/2addr v0, v2

    #@91
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@93
    .line 156
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@95
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@97
    add-double/2addr v0, v2

    #@98
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@9a
    .line 157
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@9c
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@9e
    add-double/2addr v0, v2

    #@9f
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@a1
    .line 158
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@a3
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@a5
    add-double/2addr v0, v2

    #@a6
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@a8
    .line 159
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@aa
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@ac
    add-double/2addr v0, v2

    #@ad
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@af
    .line 160
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@b1
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@b3
    add-double/2addr v0, v2

    #@b4
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@b6
    .line 161
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@b8
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@ba
    add-double/2addr v0, v2

    #@bb
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@bd
    .line 162
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@bf
    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@c1
    add-double/2addr v0, v2

    #@c2
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@c4
    .line 134
    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    #@0
    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@2
    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@4
    if-eq v0, v1, :cond_1

    #@6
    .line 105
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@a
    if-ne v0, v1, :cond_0

    #@c
    .line 107
    const/4 v0, 0x1

    #@d
    return v0

    #@e
    .line 108
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    #@10
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    #@12
    if-ne v0, v1, :cond_1

    #@14
    .line 109
    const/4 v0, -0x1

    #@15
    return v0

    #@16
    .line 113
    :cond_1
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@18
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@1a
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    #@1d
    move-result v0

    #@1e
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 102
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public computeMobilemspp()V
    .locals 6

    #@0
    .prologue
    .line 97
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    #@2
    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    #@4
    add-long v0, v2, v4

    #@6
    .line 98
    .local v0, "packets":J
    const-wide/16 v2, 0x0

    #@8
    cmp-long v2, v0, v2

    #@a
    if-lez v2, :cond_0

    #@c
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    #@e
    long-to-double v2, v2

    #@f
    long-to-double v4, v0

    #@10
    div-double/2addr v2, v4

    #@11
    :goto_0
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    #@13
    .line 96
    return-void

    #@14
    .line 98
    :cond_0
    const-wide/16 v2, 0x0

    #@16
    goto :goto_0
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUid()I
    .locals 1

    #@0
    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 126
    const/4 v0, 0x0

    #@5
    return v0

    #@6
    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    #@8
    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public sumPower()D
    .locals 4

    #@0
    .prologue
    .line 170
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    #@2
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    #@4
    add-double/2addr v0, v2

    #@5
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    #@7
    add-double/2addr v0, v2

    #@8
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    #@a
    add-double/2addr v0, v2

    #@b
    .line 171
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    #@d
    .line 170
    add-double/2addr v0, v2

    #@e
    .line 171
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    #@10
    .line 170
    add-double/2addr v0, v2

    #@11
    .line 171
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    #@13
    .line 170
    add-double/2addr v0, v2

    #@14
    .line 171
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    #@16
    .line 170
    add-double/2addr v0, v2

    #@17
    .line 172
    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    #@19
    .line 170
    add-double/2addr v0, v2

    #@1a
    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    #@1c
    return-wide v0
.end method
