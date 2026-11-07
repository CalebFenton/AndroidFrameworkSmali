.class public final Lcom/android/internal/os/RailStats;
.super Ljava/lang/Object;
.source "RailStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/RailStats$RailInfoData;
    }
.end annotation


# static fields
.field private static final blacklist CELLULAR_SUBSYSTEM:Ljava/lang/String; = "cellular"

.field private static final blacklist TAG:Ljava/lang/String; = "RailStats"

.field private static final blacklist WIFI_SUBSYSTEM:Ljava/lang/String; = "wifi"


# instance fields
.field private blacklist mCellularTotalEnergyUseduWs:J

.field private blacklist mRailInfoData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/os/RailStats$RailInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRailStatsAvailability:Z

.field private blacklist mWifiTotalEnergyUseduWs:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    .line 32
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 33
    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return-void
.end method


# virtual methods
.method public blacklist getCellularTotalEnergyUseduWs()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public blacklist getRailStats()Lcom/android/internal/os/RailStats;
    .registers 1

    .line 107
    return-object p0
.end method

.method public blacklist getWifiTotalEnergyUseduWs()J
    .registers 3

    .line 95
    iget-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    return-wide v0
.end method

.method public blacklist isRailStatsAvailable()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 102
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 103
    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 104
    return-void
.end method

.method public blacklist resetCellularTotalEnergyUsed()V
    .registers 3

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 82
    return-void
.end method

.method public blacklist resetWifiTotalEnergyUsed()V
    .registers 3

    .line 87
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 88
    return-void
.end method

.method public blacklist setRailStatsAvailability(Z)V
    .registers 2
    .param p1, "railStatsAvailability"    # Z

    .line 111
    iput-boolean p1, p0, Lcom/android/internal/os/RailStats;->mRailStatsAvailability:Z

    .line 112
    return-void
.end method

.method public blacklist updateRailData(JLjava/lang/String;Ljava/lang/String;JJ)V
    .registers 25
    .param p1, "index"    # J
    .param p3, "railName"    # Ljava/lang/String;
    .param p4, "subSystemName"    # Ljava/lang/String;
    .param p5, "timestampSinceBootMs"    # J
    .param p7, "energyUsedSinceBootuWs"    # J

    .line 46
    move-object/from16 v0, p0

    move-object/from16 v5, p4

    const-string/jumbo v11, "wifi"

    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v12, "cellular"

    if-nez v1, :cond_16

    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 47
    return-void

    .line 49
    :cond_16
    iget-object v1, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/android/internal/os/RailStats$RailInfoData;

    .line 50
    .local v13, "node":Lcom/android/internal/os/RailStats$RailInfoData;
    if-nez v13, :cond_54

    .line 51
    iget-object v14, v0, Lcom/android/internal/os/RailStats;->mRailInfoData:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    new-instance v1, Lcom/android/internal/os/RailStats$RailInfoData;

    const/4 v10, 0x0

    move-wide/from16 v2, p1

    move-object/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/os/RailStats$RailInfoData;-><init>(JLjava/lang/String;Ljava/lang/String;JJLcom/android/internal/os/RailStats-IA;)V

    invoke-interface {v14, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 54
    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 55
    return-void

    .line 57
    :cond_48
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 58
    iget-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v1, v8

    iput-wide v1, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 60
    :cond_53
    return-void

    .line 62
    :cond_54
    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    iget-wide v1, v13, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    sub-long v1, v6, v1

    .line 63
    .local v1, "timeSinceLastLogMs":J
    iget-wide v3, v13, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    sub-long v3, v8, v3

    .line 64
    .local v3, "energyUsedSinceLastLoguWs":J
    const-wide/16 v14, 0x0

    cmp-long v10, v1, v14

    if-ltz v10, :cond_6a

    cmp-long v10, v3, v14

    if-gez v10, :cond_6c

    .line 65
    :cond_6a
    iget-wide v3, v13, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    .line 67
    :cond_6c
    iput-wide v6, v13, Lcom/android/internal/os/RailStats$RailInfoData;->timestampSinceBootMs:J

    .line 68
    iput-wide v8, v13, Lcom/android/internal/os/RailStats$RailInfoData;->energyUsedSinceBootuWs:J

    .line 69
    invoke-virtual {v5, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7c

    .line 70
    iget-wide v10, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    add-long/2addr v10, v3

    iput-wide v10, v0, Lcom/android/internal/os/RailStats;->mWifiTotalEnergyUseduWs:J

    .line 71
    return-void

    .line 73
    :cond_7c
    invoke-virtual {v5, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_87

    .line 74
    iget-wide v10, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    add-long/2addr v10, v3

    iput-wide v10, v0, Lcom/android/internal/os/RailStats;->mCellularTotalEnergyUseduWs:J

    .line 76
    :cond_87
    return-void
.end method
