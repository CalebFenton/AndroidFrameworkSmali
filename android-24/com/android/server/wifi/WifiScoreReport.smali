.class public Lcom/android/server/wifi/WifiScoreReport;
.super Ljava/lang/Object;
.source "WifiScoreReport.java"


# static fields
.field private static final AGGRESSIVE_HANDOVER_PENALTY:I = 0x6

.field private static final BAD_LINKSPEED_PENALTY:I = 0x4

.field private static final BAD_RSSI_COUNT_PENALTY:I = 0x2

.field private static final GOOD_LINKSPEED_BONUS:I = 0x4

.field private static final HOME_VISIBLE_NETWORK_MAX_COUNT:I = 0x6

.field private static final LINK_STUCK_PENALTY:I = 0x2

.field private static final MAX_BAD_LINKSPEED_COUNT:I = 0x6

.field private static final MAX_BAD_RSSI_COUNT:I = 0x7

.field private static final MAX_LOW_RSSI_COUNT:I = 0x1

.field private static final MAX_STUCK_LINK_COUNT:I = 0x5

.field private static final MAX_SUCCESS_COUNT_OF_STUCK_LINK:I = 0x3

.field private static final MIN_NUM_TICKS_AT_STATE:I = 0x3e8

.field private static final MIN_SUCCESS_COUNT:I = 0x5

.field private static final MIN_SUSTAINED_LINK_STUCK_COUNT:I = 0x1

.field private static final MIN_TX_RATE_FOR_WORKING_LINK:D = 0.3

.field private static final SCAN_CACHE_COUNT_PENALTY:I = 0x2

.field private static final SCAN_CACHE_VISIBILITY_MS:I = 0x2ee0

.field private static final STARTING_SCORE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final USER_DISCONNECT_PENALTY:I = 0x5


# instance fields
.field private mBadLinkspeedcount:I

.field private mReport:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "report"    # Ljava/lang/String;
    .param p2, "badLinkspeedcount"    # I

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    iput-object p1, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    #@5
    .line 61
    iput p2, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkspeedcount:I

    #@7
    .line 59
    return-void
.end method

.method public static calculateScore(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiScoreReport;I)Lcom/android/server/wifi/WifiScoreReport;
    .locals 24
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p1, "currentConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "networkAgent"    # Landroid/net/NetworkAgent;
    .param p4, "lastReport"    # Lcom/android/server/wifi/WifiScoreReport;
    .param p5, "aggressiveHandover"    # I

    #@0
    .prologue
    .line 101
    const/4 v3, 0x0

    #@1
    .line 102
    .local v3, "debugLogging":Z
    move-object/from16 v0, p2

    #@3
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5
    move-object/from16 v18, v0

    #@7
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@a
    move-result v18

    #@b
    if-lez v18, :cond_0

    #@d
    .line 103
    const/4 v3, 0x1

    #@e
    .line 106
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    .line 108
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x38

    #@15
    .line 109
    .local v16, "score":I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@18
    move-result v18

    #@19
    if-eqz v18, :cond_23

    #@1b
    .line 110
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@1e
    move-result v18

    #@1f
    move-object/from16 v0, p2

    #@21
    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed24:I

    #@23
    move/from16 v19, v0

    #@25
    move/from16 v0, v18

    #@27
    move/from16 v1, v19

    #@29
    if-ge v0, v1, :cond_23

    #@2b
    .line 109
    const/4 v6, 0x1

    #@2c
    .line 113
    .local v6, "isBadLinkspeed":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@2f
    move-result v18

    #@30
    if-eqz v18, :cond_25

    #@32
    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@35
    move-result v18

    #@36
    move-object/from16 v0, p2

    #@38
    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed24:I

    #@3a
    move/from16 v19, v0

    #@3c
    move/from16 v0, v18

    #@3e
    move/from16 v1, v19

    #@40
    if-lt v0, v1, :cond_25

    #@42
    .line 113
    const/4 v8, 0x1

    #@43
    .line 118
    .local v8, "isGoodLinkspeed":Z
    :goto_1
    const/4 v2, 0x0

    #@44
    .line 119
    .local v2, "badLinkspeedcount":I
    if-eqz p4, :cond_1

    #@46
    .line 120
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wifi/WifiScoreReport;->getBadLinkspeedcount()I

    #@49
    move-result v2

    #@4a
    .line 123
    :cond_1
    if-eqz v6, :cond_27

    #@4c
    .line 124
    const/16 v18, 0x6

    #@4e
    move/from16 v0, v18

    #@50
    if-ge v2, v0, :cond_2

    #@52
    .line 125
    add-int/lit8 v2, v2, 0x1

    #@54
    .line 133
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    #@56
    const-string/jumbo v18, " bl("

    #@59
    move-object/from16 v0, v18

    #@5b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v18

    #@5f
    move-object/from16 v0, v18

    #@61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v18

    #@65
    const-string/jumbo v19, ")"

    #@68
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 134
    :cond_3
    if-eqz v8, :cond_4

    #@6d
    const-string/jumbo v18, " gl"

    #@70
    move-object/from16 v0, v18

    #@72
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 144
    :cond_4
    const/16 v17, 0x0

    #@77
    .line 145
    .local v17, "use24Thresholds":Z
    const/4 v4, 0x0

    #@78
    .line 147
    .local v4, "homeNetworkBoost":Z
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, p1

    #@7c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@7f
    move-result-object v15

    #@80
    .line 148
    .local v15, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz p1, :cond_6

    #@82
    if-eqz v15, :cond_6

    #@84
    .line 150
    const-wide/16 v18, 0x2ee0

    #@86
    move-wide/from16 v0, v18

    #@88
    invoke-virtual {v15, v0, v1}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    #@8b
    move-result-object v18

    #@8c
    .line 149
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, v18

    #@90
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    #@93
    .line 151
    move-object/from16 v0, p1

    #@95
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@97
    move-object/from16 v18, v0

    #@99
    if-eqz v18, :cond_5

    #@9b
    .line 152
    move-object/from16 v0, p1

    #@9d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@9f
    move-object/from16 v18, v0

    #@a1
    move-object/from16 v0, v18

    #@a3
    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@a5
    move/from16 v18, v0

    #@a7
    sget v19, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@a9
    move/from16 v0, v18

    #@ab
    move/from16 v1, v19

    #@ad
    if-eq v0, v1, :cond_5

    #@af
    .line 153
    move-object/from16 v0, p1

    #@b1
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@b3
    move-object/from16 v18, v0

    #@b5
    move-object/from16 v0, v18

    #@b7
    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@b9
    move/from16 v18, v0

    #@bb
    .line 154
    move-object/from16 v0, p1

    #@bd
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@bf
    move-object/from16 v19, v0

    #@c1
    move-object/from16 v0, v19

    #@c3
    iget v0, v0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@c5
    move/from16 v19, v0

    #@c7
    add-int/lit8 v19, v19, -0x2

    #@c9
    .line 153
    move/from16 v0, v18

    #@cb
    move/from16 v1, v19

    #@cd
    if-lt v0, v1, :cond_5

    #@cf
    .line 155
    const/16 v17, 0x1

    #@d1
    .line 158
    :cond_5
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@d4
    move-result v18

    #@d5
    const/16 v19, 0x6

    #@d7
    move/from16 v0, v18

    #@d9
    move/from16 v1, v19

    #@db
    if-gt v0, v1, :cond_6

    #@dd
    .line 159
    move-object/from16 v0, p1

    #@df
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@e1
    move-object/from16 v18, v0

    #@e3
    invoke-virtual/range {v18 .. v18}, Ljava/util/BitSet;->cardinality()I

    #@e6
    move-result v18

    #@e7
    const/16 v19, 0x1

    #@e9
    move/from16 v0, v18

    #@eb
    move/from16 v1, v19

    #@ed
    if-ne v0, v1, :cond_6

    #@ef
    .line 160
    move-object/from16 v0, p1

    #@f1
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@f3
    move-object/from16 v18, v0

    #@f5
    .line 161
    const/16 v19, 0x1

    #@f7
    .line 160
    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->get(I)Z

    #@fa
    move-result v18

    #@fb
    .line 158
    if-eqz v18, :cond_6

    #@fd
    .line 164
    const/4 v4, 0x1

    #@fe
    .line 167
    :cond_6
    if-eqz v4, :cond_7

    #@100
    const-string/jumbo v18, " hn"

    #@103
    move-object/from16 v0, v18

    #@105
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 168
    :cond_7
    if-eqz v17, :cond_8

    #@10a
    const-string/jumbo v18, " u24"

    #@10d
    move-object/from16 v0, v18

    #@10f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    .line 170
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@115
    move-result v18

    #@116
    mul-int/lit8 v19, p5, 0x6

    #@118
    sub-int v19, v18, v19

    #@11a
    .line 171
    if-eqz v4, :cond_28

    #@11c
    const/16 v18, 0x5

    #@11e
    .line 170
    :goto_3
    add-int v12, v19, v18

    #@120
    .line 172
    .local v12, "rssi":I
    const-string/jumbo v18, " rssi=%d ag=%d"

    #@123
    const/16 v19, 0x2

    #@125
    move/from16 v0, v19

    #@127
    new-array v0, v0, [Ljava/lang/Object;

    #@129
    move-object/from16 v19, v0

    #@12b
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@12e
    move-result-object v20

    #@12f
    const/16 v21, 0x0

    #@131
    aput-object v20, v19, v21

    #@133
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@136
    move-result-object v20

    #@137
    const/16 v21, 0x1

    #@139
    aput-object v20, v19, v21

    #@13b
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@13e
    move-result-object v18

    #@13f
    move-object/from16 v0, v18

    #@141
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    .line 174
    if-nez v17, :cond_29

    #@146
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@149
    move-result v5

    #@14a
    .line 176
    .local v5, "is24GHz":Z
    :goto_4
    if-eqz v5, :cond_2a

    #@14c
    move-object/from16 v0, p2

    #@14e
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@150
    move-object/from16 v18, v0

    #@152
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@155
    move-result v18

    #@156
    move/from16 v0, v18

    #@158
    if-ge v12, v0, :cond_2a

    #@15a
    const/4 v7, 0x1

    #@15b
    .line 178
    .local v7, "isBadRSSI":Z
    :goto_5
    if-eqz v5, :cond_2c

    #@15d
    move-object/from16 v0, p2

    #@15f
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@161
    move-object/from16 v18, v0

    #@163
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@166
    move-result v18

    #@167
    move/from16 v0, v18

    #@169
    if-ge v12, v0, :cond_2c

    #@16b
    const/4 v10, 0x1

    #@16c
    .line 181
    .local v10, "isLowRSSI":Z
    :goto_6
    if-eqz v5, :cond_2f

    #@16e
    move-object/from16 v0, p2

    #@170
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@172
    move-object/from16 v18, v0

    #@174
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@177
    move-result v18

    #@178
    move/from16 v0, v18

    #@17a
    if-lt v12, v0, :cond_2f

    #@17c
    const/4 v9, 0x1

    #@17d
    .line 185
    .local v9, "isHighRSSI":Z
    :goto_7
    if-eqz v7, :cond_9

    #@17f
    const-string/jumbo v18, " br"

    #@182
    move-object/from16 v0, v18

    #@184
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    .line 186
    :cond_9
    if-eqz v10, :cond_a

    #@189
    const-string/jumbo v18, " lr"

    #@18c
    move-object/from16 v0, v18

    #@18e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    .line 187
    :cond_a
    if-eqz v9, :cond_b

    #@193
    const-string/jumbo v18, " hr"

    #@196
    move-object/from16 v0, v18

    #@198
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    .line 189
    :cond_b
    const/4 v11, 0x0

    #@19c
    .line 190
    .local v11, "penalizedDueToUserTriggeredDisconnect":I
    if-eqz p1, :cond_13

    #@19e
    .line 191
    move-object/from16 v0, p0

    #@1a0
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@1a2
    move-wide/from16 v18, v0

    #@1a4
    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    #@1a6
    cmpl-double v18, v18, v20

    #@1a8
    if-gtz v18, :cond_c

    #@1aa
    .line 192
    move-object/from16 v0, p0

    #@1ac
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@1ae
    move-wide/from16 v18, v0

    #@1b0
    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    #@1b2
    cmpl-double v18, v18, v20

    #@1b4
    if-lez v18, :cond_13

    #@1b6
    .line 193
    :cond_c
    if-eqz v7, :cond_33

    #@1b8
    .line 194
    move-object/from16 v0, p1

    #@1ba
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@1bc
    move/from16 v18, v0

    #@1be
    add-int/lit8 v18, v18, 0x1

    #@1c0
    move/from16 v0, v18

    #@1c2
    move-object/from16 v1, p1

    #@1c4
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@1c6
    .line 195
    move-object/from16 v0, p1

    #@1c8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@1ca
    move/from16 v18, v0

    #@1cc
    const/16 v19, 0x3e8

    #@1ce
    move/from16 v0, v18

    #@1d0
    move/from16 v1, v19

    #@1d2
    if-le v0, v1, :cond_10

    #@1d4
    .line 198
    move-object/from16 v0, p1

    #@1d6
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@1d8
    move/from16 v18, v0

    #@1da
    if-lez v18, :cond_d

    #@1dc
    .line 199
    move-object/from16 v0, p1

    #@1de
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@1e0
    move/from16 v18, v0

    #@1e2
    add-int/lit8 v18, v18, -0x1

    #@1e4
    move/from16 v0, v18

    #@1e6
    move-object/from16 v1, p1

    #@1e8
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@1ea
    .line 201
    :cond_d
    move-object/from16 v0, p1

    #@1ec
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@1ee
    move/from16 v18, v0

    #@1f0
    if-lez v18, :cond_e

    #@1f2
    .line 202
    move-object/from16 v0, p1

    #@1f4
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@1f6
    move/from16 v18, v0

    #@1f8
    add-int/lit8 v18, v18, -0x1

    #@1fa
    move/from16 v0, v18

    #@1fc
    move-object/from16 v1, p1

    #@1fe
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@200
    .line 204
    :cond_e
    move-object/from16 v0, p1

    #@202
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@204
    move/from16 v18, v0

    #@206
    if-lez v18, :cond_f

    #@208
    .line 205
    move-object/from16 v0, p1

    #@20a
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@20c
    move/from16 v18, v0

    #@20e
    add-int/lit8 v18, v18, -0x1

    #@210
    move/from16 v0, v18

    #@212
    move-object/from16 v1, p1

    #@214
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@216
    .line 207
    :cond_f
    const/16 v18, 0x0

    #@218
    move/from16 v0, v18

    #@21a
    move-object/from16 v1, p1

    #@21c
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@21e
    .line 209
    :cond_10
    move-object/from16 v0, p2

    #@220
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@222
    move/from16 v18, v0

    #@224
    if-eqz v18, :cond_12

    #@226
    .line 210
    move-object/from16 v0, p1

    #@228
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@22a
    move/from16 v18, v0

    #@22c
    if-gtz v18, :cond_11

    #@22e
    .line 211
    move-object/from16 v0, p1

    #@230
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@232
    move/from16 v18, v0

    #@234
    if-lez v18, :cond_32

    #@236
    .line 214
    :cond_11
    :goto_8
    const/16 v16, 0x33

    #@238
    .line 215
    const/4 v11, 0x1

    #@239
    .line 216
    const-string/jumbo v18, " p1"

    #@23c
    move-object/from16 v0, v18

    #@23e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    .line 256
    :cond_12
    :goto_9
    const-string/jumbo v18, " ticks %d,%d,%d"

    #@244
    const/16 v19, 0x3

    #@246
    move/from16 v0, v19

    #@248
    new-array v0, v0, [Ljava/lang/Object;

    #@24a
    move-object/from16 v19, v0

    #@24c
    move-object/from16 v0, p1

    #@24e
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@250
    move/from16 v20, v0

    #@252
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@255
    move-result-object v20

    #@256
    const/16 v21, 0x0

    #@258
    aput-object v20, v19, v21

    #@25a
    .line 257
    move-object/from16 v0, p1

    #@25c
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@25e
    move/from16 v20, v0

    #@260
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@263
    move-result-object v20

    #@264
    const/16 v21, 0x1

    #@266
    aput-object v20, v19, v21

    #@268
    .line 258
    move-object/from16 v0, p1

    #@26a
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@26c
    move/from16 v20, v0

    #@26e
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@271
    move-result-object v20

    #@272
    const/16 v21, 0x2

    #@274
    aput-object v20, v19, v21

    #@276
    .line 256
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@279
    move-result-object v18

    #@27a
    move-object/from16 v0, v18

    #@27c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    .line 261
    :cond_13
    if-eqz v3, :cond_16

    #@281
    .line 262
    const-string/jumbo v13, ""

    #@284
    .line 263
    .local v13, "rssiStatus":Ljava/lang/String;
    if-eqz v7, :cond_3b

    #@286
    .line 264
    new-instance v18, Ljava/lang/StringBuilder;

    #@288
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@28b
    move-object/from16 v0, v18

    #@28d
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@290
    move-result-object v18

    #@291
    const-string/jumbo v19, " badRSSI "

    #@294
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@297
    move-result-object v18

    #@298
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29b
    move-result-object v13

    #@29c
    .line 270
    :cond_14
    :goto_a
    if-eqz v6, :cond_15

    #@29e
    new-instance v18, Ljava/lang/StringBuilder;

    #@2a0
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@2a3
    move-object/from16 v0, v18

    #@2a5
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a8
    move-result-object v18

    #@2a9
    const-string/jumbo v19, " lowSpeed "

    #@2ac
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2af
    move-result-object v18

    #@2b0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b3
    move-result-object v13

    #@2b4
    .line 271
    :cond_15
    const-string/jumbo v18, "WifiStateMachine"

    #@2b7
    new-instance v19, Ljava/lang/StringBuilder;

    #@2b9
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@2bc
    const-string/jumbo v20, "calculateWifiScore freq="

    #@2bf
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v19

    #@2c3
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    #@2c6
    move-result v20

    #@2c7
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2ca
    move-result-object v20

    #@2cb
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v19

    #@2cf
    .line 272
    const-string/jumbo v20, " speed="

    #@2d2
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v19

    #@2d6
    .line 272
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@2d9
    move-result v20

    #@2da
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2dd
    move-result-object v20

    #@2de
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v19

    #@2e2
    .line 273
    const-string/jumbo v20, " score="

    #@2e5
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v19

    #@2e9
    .line 273
    move-object/from16 v0, p0

    #@2eb
    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    #@2ed
    move/from16 v20, v0

    #@2ef
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2f2
    move-result-object v20

    #@2f3
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    move-result-object v19

    #@2f7
    move-object/from16 v0, v19

    #@2f9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v19

    #@2fd
    .line 275
    const-string/jumbo v20, " -> txbadrate="

    #@300
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v19

    #@304
    .line 275
    const-string/jumbo v20, "%.2f"

    #@307
    const/16 v21, 0x1

    #@309
    move/from16 v0, v21

    #@30b
    new-array v0, v0, [Ljava/lang/Object;

    #@30d
    move-object/from16 v21, v0

    #@30f
    move-object/from16 v0, p0

    #@311
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@313
    move-wide/from16 v22, v0

    #@315
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@318
    move-result-object v22

    #@319
    const/16 v23, 0x0

    #@31b
    aput-object v22, v21, v23

    #@31d
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@320
    move-result-object v20

    #@321
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@324
    move-result-object v19

    #@325
    .line 276
    const-string/jumbo v20, " txgoodrate="

    #@328
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32b
    move-result-object v19

    #@32c
    .line 276
    const-string/jumbo v20, "%.2f"

    #@32f
    const/16 v21, 0x1

    #@331
    move/from16 v0, v21

    #@333
    new-array v0, v0, [Ljava/lang/Object;

    #@335
    move-object/from16 v21, v0

    #@337
    move-object/from16 v0, p0

    #@339
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@33b
    move-wide/from16 v22, v0

    #@33d
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@340
    move-result-object v22

    #@341
    const/16 v23, 0x0

    #@343
    aput-object v22, v21, v23

    #@345
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@348
    move-result-object v20

    #@349
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v19

    #@34d
    .line 277
    const-string/jumbo v20, " txretriesrate="

    #@350
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v19

    #@354
    .line 277
    const-string/jumbo v20, "%.2f"

    #@357
    const/16 v21, 0x1

    #@359
    move/from16 v0, v21

    #@35b
    new-array v0, v0, [Ljava/lang/Object;

    #@35d
    move-object/from16 v21, v0

    #@35f
    move-object/from16 v0, p0

    #@361
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txRetriesRate:D

    #@363
    move-wide/from16 v22, v0

    #@365
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@368
    move-result-object v22

    #@369
    const/16 v23, 0x0

    #@36b
    aput-object v22, v21, v23

    #@36d
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@370
    move-result-object v20

    #@371
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@374
    move-result-object v19

    #@375
    .line 278
    const-string/jumbo v20, " rxrate="

    #@378
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v19

    #@37c
    .line 278
    const-string/jumbo v20, "%.2f"

    #@37f
    const/16 v21, 0x1

    #@381
    move/from16 v0, v21

    #@383
    new-array v0, v0, [Ljava/lang/Object;

    #@385
    move-object/from16 v21, v0

    #@387
    move-object/from16 v0, p0

    #@389
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->rxSuccessRate:D

    #@38b
    move-wide/from16 v22, v0

    #@38d
    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@390
    move-result-object v22

    #@391
    const/16 v23, 0x0

    #@393
    aput-object v22, v21, v23

    #@395
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@398
    move-result-object v20

    #@399
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v19

    #@39d
    .line 279
    const-string/jumbo v20, " userTriggerdPenalty"

    #@3a0
    .line 271
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a3
    move-result-object v19

    #@3a4
    move-object/from16 v0, v19

    #@3a6
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3a9
    move-result-object v19

    #@3aa
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3ad
    move-result-object v19

    #@3ae
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b1
    .line 282
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    #@3b3
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@3b5
    move-wide/from16 v18, v0

    #@3b7
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    #@3b9
    cmpl-double v18, v18, v20

    #@3bb
    if-ltz v18, :cond_3d

    #@3bd
    move-object/from16 v0, p0

    #@3bf
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@3c1
    move-wide/from16 v18, v0

    #@3c3
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    #@3c5
    cmpg-double v18, v18, v20

    #@3c7
    if-gez v18, :cond_3d

    #@3c9
    .line 283
    if-nez v7, :cond_17

    #@3cb
    .line 282
    if-eqz v10, :cond_3d

    #@3cd
    .line 285
    :cond_17
    move-object/from16 v0, p0

    #@3cf
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@3d1
    move/from16 v18, v0

    #@3d3
    const/16 v19, 0x5

    #@3d5
    move/from16 v0, v18

    #@3d7
    move/from16 v1, v19

    #@3d9
    if-ge v0, v1, :cond_18

    #@3db
    .line 286
    move-object/from16 v0, p0

    #@3dd
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@3df
    move/from16 v18, v0

    #@3e1
    add-int/lit8 v18, v18, 0x1

    #@3e3
    move/from16 v0, v18

    #@3e5
    move-object/from16 v1, p0

    #@3e7
    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@3e9
    .line 288
    :cond_18
    const-string/jumbo v18, " ls+=%d"

    #@3ec
    const/16 v19, 0x1

    #@3ee
    move/from16 v0, v19

    #@3f0
    new-array v0, v0, [Ljava/lang/Object;

    #@3f2
    move-object/from16 v19, v0

    #@3f4
    move-object/from16 v0, p0

    #@3f6
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@3f8
    move/from16 v20, v0

    #@3fa
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@3fd
    move-result-object v20

    #@3fe
    const/16 v21, 0x0

    #@400
    aput-object v20, v19, v21

    #@402
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@405
    move-result-object v18

    #@406
    move-object/from16 v0, v18

    #@408
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40b
    .line 289
    if-eqz v3, :cond_19

    #@40d
    .line 290
    const-string/jumbo v18, "WifiStateMachine"

    #@410
    new-instance v19, Ljava/lang/StringBuilder;

    #@412
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@415
    const-string/jumbo v20, " bad link -> stuck count ="

    #@418
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41b
    move-result-object v19

    #@41c
    .line 291
    move-object/from16 v0, p0

    #@41e
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@420
    move/from16 v20, v0

    #@422
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@425
    move-result-object v20

    #@426
    .line 290
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@429
    move-result-object v19

    #@42a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42d
    move-result-object v19

    #@42e
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@431
    .line 304
    :cond_19
    :goto_b
    const-string/jumbo v18, " [%d"

    #@434
    const/16 v19, 0x1

    #@436
    move/from16 v0, v19

    #@438
    new-array v0, v0, [Ljava/lang/Object;

    #@43a
    move-object/from16 v19, v0

    #@43c
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43f
    move-result-object v20

    #@440
    const/16 v21, 0x0

    #@442
    aput-object v20, v19, v21

    #@444
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@447
    move-result-object v18

    #@448
    move-object/from16 v0, v18

    #@44a
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44d
    .line 306
    move-object/from16 v0, p0

    #@44f
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@451
    move/from16 v18, v0

    #@453
    const/16 v19, 0x1

    #@455
    move/from16 v0, v18

    #@457
    move/from16 v1, v19

    #@459
    if-le v0, v1, :cond_1a

    #@45b
    .line 308
    move-object/from16 v0, p0

    #@45d
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@45f
    move/from16 v18, v0

    #@461
    add-int/lit8 v18, v18, -0x1

    #@463
    mul-int/lit8 v18, v18, 0x2

    #@465
    sub-int v16, v16, v18

    #@467
    .line 310
    :cond_1a
    const-string/jumbo v18, ",%d"

    #@46a
    const/16 v19, 0x1

    #@46c
    move/from16 v0, v19

    #@46e
    new-array v0, v0, [Ljava/lang/Object;

    #@470
    move-object/from16 v19, v0

    #@472
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@475
    move-result-object v20

    #@476
    const/16 v21, 0x0

    #@478
    aput-object v20, v19, v21

    #@47a
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@47d
    move-result-object v18

    #@47e
    move-object/from16 v0, v18

    #@480
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@483
    .line 312
    if-eqz v6, :cond_3f

    #@485
    .line 313
    add-int/lit8 v16, v16, -0x4

    #@487
    .line 314
    if-eqz v3, :cond_1b

    #@489
    .line 315
    const-string/jumbo v18, "WifiStateMachine"

    #@48c
    new-instance v19, Ljava/lang/StringBuilder;

    #@48e
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@491
    const-string/jumbo v20, " isBadLinkspeed   ---> count="

    #@494
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@497
    move-result-object v19

    #@498
    move-object/from16 v0, v19

    #@49a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49d
    move-result-object v19

    #@49e
    .line 316
    const-string/jumbo v20, " score="

    #@4a1
    .line 315
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a4
    move-result-object v19

    #@4a5
    .line 316
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a8
    move-result-object v20

    #@4a9
    .line 315
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ac
    move-result-object v19

    #@4ad
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b0
    move-result-object v19

    #@4b1
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@4b4
    .line 321
    :cond_1b
    :goto_c
    const-string/jumbo v18, ",%d"

    #@4b7
    const/16 v19, 0x1

    #@4b9
    move/from16 v0, v19

    #@4bb
    new-array v0, v0, [Ljava/lang/Object;

    #@4bd
    move-object/from16 v19, v0

    #@4bf
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c2
    move-result-object v20

    #@4c3
    const/16 v21, 0x0

    #@4c5
    aput-object v20, v19, v21

    #@4c7
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4ca
    move-result-object v18

    #@4cb
    move-object/from16 v0, v18

    #@4cd
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d0
    .line 323
    if-eqz v7, :cond_40

    #@4d2
    .line 324
    move-object/from16 v0, p0

    #@4d4
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@4d6
    move/from16 v18, v0

    #@4d8
    const/16 v19, 0x7

    #@4da
    move/from16 v0, v18

    #@4dc
    move/from16 v1, v19

    #@4de
    if-ge v0, v1, :cond_1c

    #@4e0
    .line 325
    move-object/from16 v0, p0

    #@4e2
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@4e4
    move/from16 v18, v0

    #@4e6
    add-int/lit8 v18, v18, 0x1

    #@4e8
    move/from16 v0, v18

    #@4ea
    move-object/from16 v1, p0

    #@4ec
    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@4ee
    .line 338
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    #@4f0
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@4f2
    move/from16 v18, v0

    #@4f4
    mul-int/lit8 v18, v18, 0x2

    #@4f6
    move-object/from16 v0, p0

    #@4f8
    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@4fa
    move/from16 v19, v0

    #@4fc
    add-int v18, v18, v19

    #@4fe
    sub-int v16, v16, v18

    #@500
    .line 339
    const-string/jumbo v18, ",%d"

    #@503
    const/16 v19, 0x1

    #@505
    move/from16 v0, v19

    #@507
    new-array v0, v0, [Ljava/lang/Object;

    #@509
    move-object/from16 v19, v0

    #@50b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@50e
    move-result-object v20

    #@50f
    const/16 v21, 0x0

    #@511
    aput-object v20, v19, v21

    #@513
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@516
    move-result-object v18

    #@517
    move-object/from16 v0, v18

    #@519
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51c
    .line 341
    if-eqz v3, :cond_1d

    #@51e
    .line 342
    const-string/jumbo v18, "WifiStateMachine"

    #@521
    new-instance v19, Ljava/lang/StringBuilder;

    #@523
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@526
    const-string/jumbo v20, " badRSSI count"

    #@529
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52c
    move-result-object v19

    #@52d
    move-object/from16 v0, p0

    #@52f
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@531
    move/from16 v20, v0

    #@533
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@536
    move-result-object v20

    #@537
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53a
    move-result-object v19

    #@53b
    .line 343
    const-string/jumbo v20, " lowRSSI count"

    #@53e
    .line 342
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@541
    move-result-object v19

    #@542
    .line 343
    move-object/from16 v0, p0

    #@544
    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@546
    move/from16 v20, v0

    #@548
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@54b
    move-result-object v20

    #@54c
    .line 342
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54f
    move-result-object v19

    #@550
    .line 344
    const-string/jumbo v20, " --> score "

    #@553
    .line 342
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@556
    move-result-object v19

    #@557
    .line 344
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@55a
    move-result-object v20

    #@55b
    .line 342
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55e
    move-result-object v19

    #@55f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@562
    move-result-object v19

    #@563
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@566
    .line 347
    :cond_1d
    if-eqz v9, :cond_1e

    #@568
    .line 348
    add-int/lit8 v16, v16, 0x5

    #@56a
    .line 349
    if-eqz v3, :cond_1e

    #@56c
    const-string/jumbo v18, "WifiStateMachine"

    #@56f
    new-instance v19, Ljava/lang/StringBuilder;

    #@571
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@574
    const-string/jumbo v20, " isHighRSSI       ---> score="

    #@577
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57a
    move-result-object v19

    #@57b
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@57e
    move-result-object v20

    #@57f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@582
    move-result-object v19

    #@583
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@586
    move-result-object v19

    #@587
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@58a
    .line 351
    :cond_1e
    const-string/jumbo v18, ",%d]"

    #@58d
    const/16 v19, 0x1

    #@58f
    move/from16 v0, v19

    #@591
    new-array v0, v0, [Ljava/lang/Object;

    #@593
    move-object/from16 v19, v0

    #@595
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@598
    move-result-object v20

    #@599
    const/16 v21, 0x0

    #@59b
    aput-object v20, v19, v21

    #@59d
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5a0
    move-result-object v18

    #@5a1
    move-object/from16 v0, v18

    #@5a3
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a6
    .line 353
    const-string/jumbo v18, " brc=%d lrc=%d"

    #@5a9
    const/16 v19, 0x2

    #@5ab
    move/from16 v0, v19

    #@5ad
    new-array v0, v0, [Ljava/lang/Object;

    #@5af
    move-object/from16 v19, v0

    #@5b1
    move-object/from16 v0, p0

    #@5b3
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@5b5
    move/from16 v20, v0

    #@5b7
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5ba
    move-result-object v20

    #@5bb
    const/16 v21, 0x0

    #@5bd
    aput-object v20, v19, v21

    #@5bf
    move-object/from16 v0, p0

    #@5c1
    iget v0, v0, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@5c3
    move/from16 v20, v0

    #@5c5
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5c8
    move-result-object v20

    #@5c9
    const/16 v21, 0x1

    #@5cb
    aput-object v20, v19, v21

    #@5cd
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5d0
    move-result-object v18

    #@5d1
    move-object/from16 v0, v18

    #@5d3
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d6
    .line 356
    const/16 v18, 0x3c

    #@5d8
    move/from16 v0, v16

    #@5da
    move/from16 v1, v18

    #@5dc
    if-le v0, v1, :cond_1f

    #@5de
    .line 357
    const/16 v16, 0x3c

    #@5e0
    .line 359
    :cond_1f
    if-gez v16, :cond_20

    #@5e2
    .line 360
    const/16 v16, 0x0

    #@5e4
    .line 364
    :cond_20
    move-object/from16 v0, p0

    #@5e6
    iget v0, v0, Landroid/net/wifi/WifiInfo;->score:I

    #@5e8
    move/from16 v18, v0

    #@5ea
    move/from16 v0, v16

    #@5ec
    move/from16 v1, v18

    #@5ee
    if-eq v0, v1, :cond_22

    #@5f0
    .line 365
    if-eqz v3, :cond_21

    #@5f2
    .line 366
    const-string/jumbo v18, "WifiStateMachine"

    #@5f5
    new-instance v19, Ljava/lang/StringBuilder;

    #@5f7
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@5fa
    const-string/jumbo v20, "calculateWifiScore() report new score "

    #@5fd
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@600
    move-result-object v19

    #@601
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@604
    move-result-object v20

    #@605
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@608
    move-result-object v19

    #@609
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60c
    move-result-object v19

    #@60d
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@610
    .line 368
    :cond_21
    move/from16 v0, v16

    #@612
    move-object/from16 v1, p0

    #@614
    iput v0, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@616
    .line 369
    if-eqz p3, :cond_22

    #@618
    .line 370
    move-object/from16 v0, p3

    #@61a
    move/from16 v1, v16

    #@61c
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    #@61f
    .line 373
    :cond_22
    new-instance v18, Lcom/android/server/wifi/WifiScoreReport;

    #@621
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@624
    move-result-object v19

    #@625
    move-object/from16 v0, v18

    #@627
    move-object/from16 v1, v19

    #@629
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiScoreReport;-><init>(Ljava/lang/String;I)V

    #@62c
    return-object v18

    #@62d
    .line 111
    .end local v2    # "badLinkspeedcount":I
    .end local v4    # "homeNetworkBoost":Z
    .end local v5    # "is24GHz":Z
    .end local v6    # "isBadLinkspeed":Z
    .end local v7    # "isBadRSSI":Z
    .end local v8    # "isGoodLinkspeed":Z
    .end local v9    # "isHighRSSI":Z
    .end local v10    # "isLowRSSI":Z
    .end local v11    # "penalizedDueToUserTriggeredDisconnect":I
    .end local v12    # "rssi":I
    .end local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v17    # "use24Thresholds":Z
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@630
    move-result v18

    #@631
    if-eqz v18, :cond_24

    #@633
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@636
    move-result v18

    #@637
    .line 112
    move-object/from16 v0, p2

    #@639
    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed5:I

    #@63b
    move/from16 v19, v0

    #@63d
    .line 111
    move/from16 v0, v18

    #@63f
    move/from16 v1, v19

    #@641
    if-ge v0, v1, :cond_24

    #@643
    const/4 v6, 0x1

    #@644
    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    #@646
    .end local v6    # "isBadLinkspeed":Z
    :cond_24
    const/4 v6, 0x0

    #@647
    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    #@649
    .line 115
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@64c
    move-result v18

    #@64d
    if-eqz v18, :cond_26

    #@64f
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@652
    move-result v18

    #@653
    .line 116
    move-object/from16 v0, p2

    #@655
    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed5:I

    #@657
    move/from16 v19, v0

    #@659
    .line 115
    move/from16 v0, v18

    #@65b
    move/from16 v1, v19

    #@65d
    if-lt v0, v1, :cond_26

    #@65f
    const/4 v8, 0x1

    #@660
    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    #@662
    .end local v8    # "isGoodLinkspeed":Z
    :cond_26
    const/4 v8, 0x0

    #@663
    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    #@665
    .line 128
    .restart local v2    # "badLinkspeedcount":I
    :cond_27
    if-lez v2, :cond_2

    #@667
    .line 129
    add-int/lit8 v2, v2, -0x1

    #@669
    goto/16 :goto_2

    #@66b
    .line 171
    .restart local v4    # "homeNetworkBoost":Z
    .restart local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v17    # "use24Thresholds":Z
    :cond_28
    const/16 v18, 0x0

    #@66d
    goto/16 :goto_3

    #@66f
    .line 174
    .restart local v12    # "rssi":I
    :cond_29
    const/4 v5, 0x1

    #@670
    goto/16 :goto_4

    #@672
    .line 177
    .restart local v5    # "is24GHz":Z
    :cond_2a
    if-nez v5, :cond_2b

    #@674
    move-object/from16 v0, p2

    #@676
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@678
    move-object/from16 v18, v0

    #@67a
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@67d
    move-result v18

    #@67e
    move/from16 v0, v18

    #@680
    if-ge v12, v0, :cond_2b

    #@682
    const/4 v7, 0x1

    #@683
    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    #@685
    .end local v7    # "isBadRSSI":Z
    :cond_2b
    const/4 v7, 0x0

    #@686
    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    #@688
    .line 179
    :cond_2c
    if-nez v5, :cond_2e

    #@68a
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@68d
    move-result v18

    #@68e
    move-object/from16 v0, p2

    #@690
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@692
    move-object/from16 v19, v0

    #@694
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@697
    move-result v19

    #@698
    move/from16 v0, v18

    #@69a
    move/from16 v1, v19

    #@69c
    if-ge v0, v1, :cond_2d

    #@69e
    const/4 v10, 0x1

    #@69f
    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    #@6a1
    .end local v10    # "isLowRSSI":Z
    :cond_2d
    const/4 v10, 0x0

    #@6a2
    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    #@6a4
    .line 179
    .end local v10    # "isLowRSSI":Z
    :cond_2e
    const/4 v10, 0x0

    #@6a5
    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    #@6a7
    .line 182
    :cond_2f
    if-nez v5, :cond_31

    #@6a9
    .line 183
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@6ac
    move-result v18

    #@6ad
    move-object/from16 v0, p2

    #@6af
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6b1
    move-object/from16 v19, v0

    #@6b3
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6b6
    move-result v19

    #@6b7
    move/from16 v0, v18

    #@6b9
    move/from16 v1, v19

    #@6bb
    if-lt v0, v1, :cond_30

    #@6bd
    const/4 v9, 0x1

    #@6be
    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    #@6c0
    .end local v9    # "isHighRSSI":Z
    :cond_30
    const/4 v9, 0x0

    #@6c1
    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    #@6c3
    .line 182
    .end local v9    # "isHighRSSI":Z
    :cond_31
    const/4 v9, 0x0

    #@6c4
    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    #@6c6
    .line 212
    .restart local v11    # "penalizedDueToUserTriggeredDisconnect":I
    :cond_32
    move-object/from16 v0, p1

    #@6c8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@6ca
    move/from16 v18, v0

    #@6cc
    if-lez v18, :cond_12

    #@6ce
    goto/16 :goto_8

    #@6d0
    .line 218
    :cond_33
    if-eqz v10, :cond_38

    #@6d2
    .line 219
    move-object/from16 v0, p1

    #@6d4
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@6d6
    move/from16 v18, v0

    #@6d8
    add-int/lit8 v18, v18, 0x1

    #@6da
    move/from16 v0, v18

    #@6dc
    move-object/from16 v1, p1

    #@6de
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@6e0
    .line 220
    move-object/from16 v0, p1

    #@6e2
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@6e4
    move/from16 v18, v0

    #@6e6
    const/16 v19, 0x3e8

    #@6e8
    move/from16 v0, v18

    #@6ea
    move/from16 v1, v19

    #@6ec
    if-le v0, v1, :cond_36

    #@6ee
    .line 223
    move-object/from16 v0, p1

    #@6f0
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@6f2
    move/from16 v18, v0

    #@6f4
    if-lez v18, :cond_34

    #@6f6
    .line 224
    move-object/from16 v0, p1

    #@6f8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@6fa
    move/from16 v18, v0

    #@6fc
    add-int/lit8 v18, v18, -0x1

    #@6fe
    move/from16 v0, v18

    #@700
    move-object/from16 v1, p1

    #@702
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@704
    .line 226
    :cond_34
    move-object/from16 v0, p1

    #@706
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@708
    move/from16 v18, v0

    #@70a
    if-lez v18, :cond_35

    #@70c
    .line 227
    move-object/from16 v0, p1

    #@70e
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@710
    move/from16 v18, v0

    #@712
    add-int/lit8 v18, v18, -0x1

    #@714
    move/from16 v0, v18

    #@716
    move-object/from16 v1, p1

    #@718
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@71a
    .line 229
    :cond_35
    const/16 v18, 0x0

    #@71c
    move/from16 v0, v18

    #@71e
    move-object/from16 v1, p1

    #@720
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@722
    .line 231
    :cond_36
    move-object/from16 v0, p2

    #@724
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@726
    move/from16 v18, v0

    #@728
    if-eqz v18, :cond_12

    #@72a
    .line 232
    move-object/from16 v0, p1

    #@72c
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@72e
    move/from16 v18, v0

    #@730
    if-gtz v18, :cond_37

    #@732
    .line 233
    move-object/from16 v0, p1

    #@734
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@736
    move/from16 v18, v0

    #@738
    if-lez v18, :cond_12

    #@73a
    .line 235
    :cond_37
    const/16 v16, 0x33

    #@73c
    .line 236
    const/4 v11, 0x2

    #@73d
    .line 237
    const-string/jumbo v18, " p2"

    #@740
    move-object/from16 v0, v18

    #@742
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@745
    goto/16 :goto_9

    #@747
    .line 239
    :cond_38
    if-nez v9, :cond_12

    #@749
    .line 240
    move-object/from16 v0, p1

    #@74b
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@74d
    move/from16 v18, v0

    #@74f
    add-int/lit8 v18, v18, 0x1

    #@751
    move/from16 v0, v18

    #@753
    move-object/from16 v1, p1

    #@755
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@757
    .line 241
    move-object/from16 v0, p1

    #@759
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@75b
    move/from16 v18, v0

    #@75d
    const/16 v19, 0x3e8

    #@75f
    move/from16 v0, v18

    #@761
    move/from16 v1, v19

    #@763
    if-le v0, v1, :cond_3a

    #@765
    .line 244
    move-object/from16 v0, p1

    #@767
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@769
    move/from16 v18, v0

    #@76b
    if-lez v18, :cond_39

    #@76d
    .line 245
    move-object/from16 v0, p1

    #@76f
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@771
    move/from16 v18, v0

    #@773
    add-int/lit8 v18, v18, -0x1

    #@775
    move/from16 v0, v18

    #@777
    move-object/from16 v1, p1

    #@779
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@77b
    .line 247
    :cond_39
    const/16 v18, 0x0

    #@77d
    move/from16 v0, v18

    #@77f
    move-object/from16 v1, p1

    #@781
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@783
    .line 249
    :cond_3a
    move-object/from16 v0, p2

    #@785
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@787
    move/from16 v18, v0

    #@789
    if-eqz v18, :cond_12

    #@78b
    .line 250
    move-object/from16 v0, p1

    #@78d
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@78f
    move/from16 v18, v0

    #@791
    if-lez v18, :cond_12

    #@793
    .line 251
    const/16 v16, 0x33

    #@795
    .line 252
    const/4 v11, 0x3

    #@796
    .line 253
    const-string/jumbo v18, " p3"

    #@799
    move-object/from16 v0, v18

    #@79b
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79e
    goto/16 :goto_9

    #@7a0
    .line 265
    .restart local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3b
    if-eqz v9, :cond_3c

    #@7a2
    .line 266
    new-instance v18, Ljava/lang/StringBuilder;

    #@7a4
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7a7
    move-object/from16 v0, v18

    #@7a9
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ac
    move-result-object v18

    #@7ad
    const-string/jumbo v19, " highRSSI "

    #@7b0
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b3
    move-result-object v18

    #@7b4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b7
    move-result-object v13

    #@7b8
    goto/16 :goto_a

    #@7ba
    .line 267
    :cond_3c
    if-eqz v10, :cond_14

    #@7bc
    .line 268
    new-instance v18, Ljava/lang/StringBuilder;

    #@7be
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7c1
    move-object/from16 v0, v18

    #@7c3
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c6
    move-result-object v18

    #@7c7
    const-string/jumbo v19, " lowRSSI "

    #@7ca
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cd
    move-result-object v18

    #@7ce
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d1
    move-result-object v13

    #@7d2
    goto/16 :goto_a

    #@7d4
    .line 293
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    #@7d6
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@7d8
    move-wide/from16 v18, v0

    #@7da
    const-wide v20, 0x3fd3333333333333L    # 0.3

    #@7df
    cmpg-double v18, v18, v20

    #@7e1
    if-gez v18, :cond_19

    #@7e3
    .line 294
    move-object/from16 v0, p0

    #@7e5
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@7e7
    move/from16 v18, v0

    #@7e9
    if-lez v18, :cond_3e

    #@7eb
    .line 295
    move-object/from16 v0, p0

    #@7ed
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@7ef
    move/from16 v18, v0

    #@7f1
    add-int/lit8 v18, v18, -0x1

    #@7f3
    move/from16 v0, v18

    #@7f5
    move-object/from16 v1, p0

    #@7f7
    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@7f9
    .line 297
    :cond_3e
    const-string/jumbo v18, " ls-=%d"

    #@7fc
    const/16 v19, 0x1

    #@7fe
    move/from16 v0, v19

    #@800
    new-array v0, v0, [Ljava/lang/Object;

    #@802
    move-object/from16 v19, v0

    #@804
    move-object/from16 v0, p0

    #@806
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@808
    move/from16 v20, v0

    #@80a
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@80d
    move-result-object v20

    #@80e
    const/16 v21, 0x0

    #@810
    aput-object v20, v19, v21

    #@812
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@815
    move-result-object v18

    #@816
    move-object/from16 v0, v18

    #@818
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81b
    .line 298
    if-eqz v3, :cond_19

    #@81d
    .line 299
    const-string/jumbo v18, "WifiStateMachine"

    #@820
    new-instance v19, Ljava/lang/StringBuilder;

    #@822
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@825
    const-string/jumbo v20, " good link -> stuck count ="

    #@828
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82b
    move-result-object v19

    #@82c
    .line 300
    move-object/from16 v0, p0

    #@82e
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@830
    move/from16 v20, v0

    #@832
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@835
    move-result-object v20

    #@836
    .line 299
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@839
    move-result-object v19

    #@83a
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83d
    move-result-object v19

    #@83e
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@841
    goto/16 :goto_b

    #@843
    .line 318
    :cond_3f
    if-eqz v8, :cond_1b

    #@845
    move-object/from16 v0, p0

    #@847
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@849
    move-wide/from16 v18, v0

    #@84b
    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    #@84d
    cmpl-double v18, v18, v20

    #@84f
    if-lez v18, :cond_1b

    #@851
    .line 319
    add-int/lit8 v16, v16, 0x4

    #@853
    goto/16 :goto_c

    #@855
    .line 327
    :cond_40
    if-eqz v10, :cond_41

    #@857
    .line 328
    const/16 v18, 0x1

    #@859
    move/from16 v0, v18

    #@85b
    move-object/from16 v1, p0

    #@85d
    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@85f
    .line 329
    move-object/from16 v0, p0

    #@861
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@863
    move/from16 v18, v0

    #@865
    if-lez v18, :cond_1c

    #@867
    .line 331
    move-object/from16 v0, p0

    #@869
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@86b
    move/from16 v18, v0

    #@86d
    add-int/lit8 v18, v18, -0x1

    #@86f
    move/from16 v0, v18

    #@871
    move-object/from16 v1, p0

    #@873
    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@875
    goto/16 :goto_d

    #@877
    .line 334
    :cond_41
    const/16 v18, 0x0

    #@879
    move/from16 v0, v18

    #@87b
    move-object/from16 v1, p0

    #@87d
    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@87f
    .line 335
    const/16 v18, 0x0

    #@881
    move/from16 v0, v18

    #@883
    move-object/from16 v1, p0

    #@885
    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@887
    goto/16 :goto_d
.end method


# virtual methods
.method public getBadLinkspeedcount()I
    .locals 1

    #@0
    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mBadLinkspeedcount:I

    #@2
    return v0
.end method

.method public getReport()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/server/wifi/WifiScoreReport;->mReport:Ljava/lang/String;

    #@2
    return-object v0
.end method
