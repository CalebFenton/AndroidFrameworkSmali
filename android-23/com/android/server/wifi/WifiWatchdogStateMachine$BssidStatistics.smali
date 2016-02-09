.class Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BssidStatistics"
.end annotation


# instance fields
.field private final mBssid:Ljava/lang/String;

.field private mBssidAvoidTimeMax:J

.field private mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

.field private mEntriesSize:I

.field private mGoodLinkTargetCount:I

.field private mGoodLinkTargetIndex:I

.field private mGoodLinkTargetRssi:I

.field private mLastTimeGood:J

.field private mLastTimePoor:J

.field private mLastTimeSample:J

.field private mRssiBase:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)Ljava/lang/String;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    #@2
    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    #@2
    return v0
.end method

.method static synthetic -get3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    #@2
    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;)J
    .locals 2

    #@0
    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    #@2
    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    #@2
    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    #@2
    return-wide p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    #@2
    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;J)J
    .locals 1

    #@0
    iput-wide p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeSample:J

    #@2
    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1052
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 1053
    iput-object p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssid:Ljava/lang/String;

    #@7
    .line 1054
    const/16 v1, -0x69

    #@9
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@b
    .line 1055
    const/16 v1, 0x3d

    #@d
    iput v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    #@f
    .line 1056
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    #@11
    new-array v1, v1, [Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@13
    iput-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@15
    .line 1057
    const/4 v0, 0x0

    #@16
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    #@18
    if-ge v0, v1, :cond_0

    #@1a
    .line 1058
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@1c
    new-instance v2, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@1e
    const-wide v4, 0x3fb999999999999aL    # 0.1

    #@23
    invoke-direct {v2, p1, v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;-><init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V

    #@26
    aput-object v2, v1, v0

    #@28
    .line 1057
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 1052
    :cond_0
    return-void
.end method


# virtual methods
.method public findRssiTarget(IID)I
    .locals 11
    .param p1, "from"    # I
    .param p2, "to"    # I
    .param p3, "threshold"    # D

    #@0
    .prologue
    .line 1172
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@2
    sub-int/2addr p1, v6

    #@3
    .line 1173
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@5
    sub-int/2addr p2, v6

    #@6
    .line 1174
    const/4 v1, 0x0

    #@7
    .line 1175
    .local v1, "emptyCount":I
    if-ge p1, p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    .line 1176
    .local v0, "d":I
    :goto_0
    move v2, p1

    #@b
    .local v2, "i":I
    :goto_1
    if-eq v2, p2, :cond_3

    #@d
    .line 1178
    if-ltz v2, :cond_1

    #@f
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    #@11
    if-ge v2, v6, :cond_1

    #@13
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@15
    aget-object v6, v6, v2

    #@17
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    #@1a
    move-result-wide v6

    #@1b
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@1d
    cmpl-double v6, v6, v8

    #@1f
    if-lez v6, :cond_1

    #@21
    .line 1179
    const/4 v1, 0x0

    #@22
    .line 1180
    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@24
    aget-object v6, v6, v2

    #@26
    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->-get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D

    #@29
    move-result-wide v6

    #@2a
    cmpg-double v6, v6, p3

    #@2c
    if-gez v6, :cond_2

    #@2e
    .line 1182
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@30
    add-int v3, v6, v2

    #@32
    .line 1190
    .local v3, "rssi":I
    return v3

    #@33
    .line 1175
    .end local v0    # "d":I
    .end local v2    # "i":I
    .end local v3    # "rssi":I
    :cond_0
    const/4 v0, -0x1

    #@34
    .restart local v0    # "d":I
    goto :goto_0

    #@35
    .line 1192
    .restart local v2    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@37
    const/4 v6, 0x3

    #@38
    if-lt v1, v6, :cond_2

    #@3a
    .line 1194
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@3c
    add-int v3, v6, v2

    #@3e
    .line 1195
    .restart local v3    # "rssi":I
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->presetLoss(I)D

    #@41
    move-result-wide v4

    #@42
    .line 1196
    .local v4, "lossPreset":D
    cmpg-double v6, v4, p3

    #@44
    if-gez v6, :cond_2

    #@46
    .line 1203
    return v3

    #@47
    .line 1176
    .end local v3    # "rssi":I
    .end local v4    # "lossPreset":D
    :cond_2
    add-int/2addr v2, v0

    #@48
    goto :goto_1

    #@49
    .line 1207
    :cond_3
    iget v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@4b
    add-int/2addr v6, p2

    #@4c
    return v6
.end method

.method public newLinkDetected()V
    .locals 6

    #@0
    .prologue
    .line 1147
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    #@2
    const-wide/16 v4, 0x0

    #@4
    cmp-long v2, v2, v4

    #@6
    if-lez v2, :cond_0

    #@8
    .line 1150
    return-void

    #@9
    .line 1154
    :cond_0
    const/16 v0, -0x69

    #@b
    .line 1155
    .local v0, "from":I
    const/16 v1, -0x2d

    #@d
    .line 1156
    .local v1, "to":I
    const-wide v2, 0x3fb999999999999aL    # 0.1

    #@12
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    #@15
    move-result v2

    #@16
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    #@18
    .line 1157
    const/4 v2, 0x1

    #@19
    iput v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    #@1b
    .line 1158
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1e
    move-result-wide v2

    #@1f
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@22
    move-result-object v4

    #@23
    const/4 v5, 0x0

    #@24
    aget-object v4, v4, v5

    #@26
    iget v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    #@28
    int-to-long v4, v4

    #@29
    add-long/2addr v2, v4

    #@2a
    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    #@2c
    .line 1145
    return-void
.end method

.method public poorLinkDetected(I)Z
    .locals 17
    .param p1, "rssi"    # I

    #@0
    .prologue
    .line 1108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@3
    move-result-wide v10

    #@4
    .line 1109
    .local v10, "now":J
    move-object/from16 v0, p0

    #@6
    iget-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimeGood:J

    #@8
    sub-long v6, v10, v14

    #@a
    .line 1110
    .local v6, "lastGood":J
    move-object/from16 v0, p0

    #@c
    iget-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mLastTimePoor:J

    #@e
    sub-long v8, v10, v14

    #@10
    .line 1113
    .local v8, "lastPoor":J
    :goto_0
    move-object/from16 v0, p0

    #@12
    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@14
    if-lez v14, :cond_0

    #@16
    .line 1114
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@19
    move-result-object v14

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@1e
    add-int/lit8 v15, v15, -0x1

    #@20
    aget-object v14, v14, v15

    #@22
    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->REDUCE_TIME_MS:I

    #@24
    int-to-long v14, v14

    #@25
    cmp-long v14, v8, v14

    #@27
    if-ltz v14, :cond_0

    #@29
    .line 1115
    move-object/from16 v0, p0

    #@2b
    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@2d
    add-int/lit8 v14, v14, -0x1

    #@2f
    move-object/from16 v0, p0

    #@31
    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@33
    goto :goto_0

    #@34
    .line 1116
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@37
    move-result-object v14

    #@38
    move-object/from16 v0, p0

    #@3a
    iget v15, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@3c
    aget-object v14, v14, v15

    #@3e
    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->SAMPLE_COUNT:I

    #@40
    move-object/from16 v0, p0

    #@42
    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetCount:I

    #@44
    .line 1119
    add-int/lit8 v4, p1, 0x3

    #@46
    .line 1120
    .local v4, "from":I
    add-int/lit8 v13, p1, 0x14

    #@48
    .line 1121
    .local v13, "to":I
    const-wide v14, 0x3fb999999999999aL    # 0.1

    #@4d
    move-object/from16 v0, p0

    #@4f
    invoke-virtual {v0, v4, v13, v14, v15}, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->findRssiTarget(IID)I

    #@52
    move-result v14

    #@53
    move-object/from16 v0, p0

    #@55
    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    #@57
    .line 1122
    move-object/from16 v0, p0

    #@59
    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    #@5b
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@5e
    move-result-object v15

    #@5f
    move-object/from16 v0, p0

    #@61
    iget v0, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@63
    move/from16 v16, v0

    #@65
    aget-object v15, v15, v16

    #@67
    iget v15, v15, Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;->RSSI_ADJ_DBM:I

    #@69
    add-int/2addr v14, v15

    #@6a
    move-object/from16 v0, p0

    #@6c
    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetRssi:I

    #@6e
    .line 1123
    move-object/from16 v0, p0

    #@70
    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@72
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get0()[Lcom/android/server/wifi/WifiWatchdogStateMachine$GoodLinkTarget;

    #@75
    move-result-object v15

    #@76
    array-length v15, v15

    #@77
    add-int/lit8 v15, v15, -0x1

    #@79
    if-ge v14, v15, :cond_1

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@7f
    add-int/lit8 v14, v14, 0x1

    #@81
    move-object/from16 v0, p0

    #@83
    iput v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mGoodLinkTargetIndex:I

    #@85
    .line 1126
    :cond_1
    const/4 v5, 0x0

    #@86
    .local v5, "p":I
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@89
    move-result-object v14

    #@8a
    array-length v14, v14

    #@8b
    add-int/lit8 v12, v14, -0x1

    #@8d
    .line 1127
    .local v12, "pmax":I
    :goto_1
    if-ge v5, v12, :cond_2

    #@8f
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@92
    move-result-object v14

    #@93
    add-int/lit8 v15, v5, 0x1

    #@95
    aget-object v14, v14, v15

    #@97
    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->MIN_RSSI_DBM:I

    #@99
    move/from16 v0, p1

    #@9b
    if-lt v0, v14, :cond_2

    #@9d
    add-int/lit8 v5, v5, 0x1

    #@9f
    goto :goto_1

    #@a0
    .line 1128
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get1()[Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;

    #@a3
    move-result-object v14

    #@a4
    aget-object v14, v14, v5

    #@a6
    iget v14, v14, Lcom/android/server/wifi/WifiWatchdogStateMachine$MaxAvoidTime;->TIME_MS:I

    #@a8
    int-to-long v2, v14

    #@a9
    .line 1131
    .local v2, "avoidMax":J
    const-wide/16 v14, 0x0

    #@ab
    cmp-long v14, v2, v14

    #@ad
    if-gtz v14, :cond_3

    #@af
    const/4 v14, 0x0

    #@b0
    return v14

    #@b1
    .line 1134
    :cond_3
    add-long v14, v10, v2

    #@b3
    move-object/from16 v0, p0

    #@b5
    iput-wide v14, v0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mBssidAvoidTimeMax:J

    #@b7
    .line 1139
    const/4 v14, 0x1

    #@b8
    return v14
.end method

.method public presetLoss(I)D
    .locals 11
    .param p1, "rssi"    # I

    #@0
    .prologue
    const/16 v10, 0x5a

    #@2
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    #@4
    .line 1087
    const/16 v2, -0x5a

    #@6
    if-gt p1, v2, :cond_0

    #@8
    return-wide v8

    #@9
    .line 1088
    :cond_0
    if-lez p1, :cond_1

    #@b
    const-wide/16 v2, 0x0

    #@d
    return-wide v2

    #@e
    .line 1090
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17()[D

    #@11
    move-result-object v2

    #@12
    if-nez v2, :cond_2

    #@14
    .line 1092
    const/16 v1, 0x5a

    #@16
    .line 1093
    .local v1, "size":I
    new-array v2, v10, [D

    #@18
    invoke-static {v2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set6([D)[D

    #@1b
    .line 1094
    const/4 v0, 0x0

    #@1c
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_2

    #@1e
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17()[D

    #@21
    move-result-object v2

    #@22
    rsub-int/lit8 v3, v0, 0x5a

    #@24
    int-to-double v4, v3

    #@25
    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    #@27
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@2a
    move-result-wide v4

    #@2b
    div-double v4, v8, v4

    #@2d
    aput-wide v4, v2, v0

    #@2f
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 1096
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get17()[D

    #@35
    move-result-object v2

    #@36
    neg-int v3, p1

    #@37
    aget-wide v2, v2, v3

    #@39
    return-wide v2
.end method

.method public updateLoss(IDI)V
    .locals 2
    .param p1, "rssi"    # I
    .param p2, "value"    # D
    .param p4, "volume"    # I

    #@0
    .prologue
    .line 1069
    if-gtz p4, :cond_0

    #@2
    return-void

    #@3
    .line 1070
    :cond_0
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mRssiBase:I

    #@5
    sub-int v0, p1, v1

    #@7
    .line 1071
    .local v0, "index":I
    if-ltz v0, :cond_1

    #@9
    iget v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntriesSize:I

    #@b
    if-lt v0, v1, :cond_2

    #@d
    :cond_1
    return-void

    #@e
    .line 1072
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$BssidStatistics;->mEntries:[Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;

    #@10
    aget-object v1, v1, v0

    #@12
    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->update(DI)V

    #@15
    .line 1068
    return-void
.end method
