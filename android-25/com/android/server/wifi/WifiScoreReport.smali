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

.method public static calculateScore(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/WifiConfigManager;Landroid/net/NetworkAgent;Lcom/android/server/wifi/WifiScoreReport;ILcom/android/server/wifi/WifiMetrics;)Lcom/android/server/wifi/WifiScoreReport;
    .locals 24
    .param p0, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p1, "currentConfiguration"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "wifiConfigManager"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p3, "networkAgent"    # Landroid/net/NetworkAgent;
    .param p4, "lastReport"    # Lcom/android/server/wifi/WifiScoreReport;
    .param p5, "aggressiveHandover"    # I
    .param p6, "wifiMetrics"    # Lcom/android/server/wifi/WifiMetrics;

    #@0
    .prologue
    .line 102
    const/4 v3, 0x0

    #@1
    .line 103
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
    .line 104
    const/4 v3, 0x1

    #@e
    .line 107
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    .line 109
    .local v14, "sb":Ljava/lang/StringBuilder;
    const/16 v16, 0x38

    #@15
    .line 110
    .local v16, "score":I
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@18
    move-result v18

    #@19
    if-eqz v18, :cond_23

    #@1b
    .line 111
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
    .line 110
    const/4 v6, 0x1

    #@2c
    .line 114
    .local v6, "isBadLinkspeed":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@2f
    move-result v18

    #@30
    if-eqz v18, :cond_25

    #@32
    .line 115
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
    .line 114
    const/4 v8, 0x1

    #@43
    .line 119
    .local v8, "isGoodLinkspeed":Z
    :goto_1
    const/4 v2, 0x0

    #@44
    .line 120
    .local v2, "badLinkspeedcount":I
    if-eqz p4, :cond_1

    #@46
    .line 121
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wifi/WifiScoreReport;->getBadLinkspeedcount()I

    #@49
    move-result v2

    #@4a
    .line 124
    :cond_1
    if-eqz v6, :cond_27

    #@4c
    .line 125
    const/16 v18, 0x6

    #@4e
    move/from16 v0, v18

    #@50
    if-ge v2, v0, :cond_2

    #@52
    .line 126
    add-int/lit8 v2, v2, 0x1

    #@54
    .line 134
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
    .line 135
    :cond_3
    if-eqz v8, :cond_4

    #@6d
    const-string/jumbo v18, " gl"

    #@70
    move-object/from16 v0, v18

    #@72
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    .line 145
    :cond_4
    const/16 v17, 0x0

    #@77
    .line 146
    .local v17, "use24Thresholds":Z
    const/4 v4, 0x0

    #@78
    .line 148
    .local v4, "homeNetworkBoost":Z
    move-object/from16 v0, p2

    #@7a
    move-object/from16 v1, p1

    #@7c
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@7f
    move-result-object v15

    #@80
    .line 149
    .local v15, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz p1, :cond_6

    #@82
    if-eqz v15, :cond_6

    #@84
    .line 151
    const-wide/16 v18, 0x2ee0

    #@86
    move-wide/from16 v0, v18

    #@88
    invoke-virtual {v15, v0, v1}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    #@8b
    move-result-object v18

    #@8c
    .line 150
    move-object/from16 v0, p1

    #@8e
    move-object/from16 v1, v18

    #@90
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    #@93
    .line 152
    move-object/from16 v0, p1

    #@95
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@97
    move-object/from16 v18, v0

    #@99
    if-eqz v18, :cond_5

    #@9b
    .line 153
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
    .line 154
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
    .line 155
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
    .line 154
    move/from16 v0, v18

    #@cb
    move/from16 v1, v19

    #@cd
    if-lt v0, v1, :cond_5

    #@cf
    .line 156
    const/16 v17, 0x1

    #@d1
    .line 159
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
    .line 160
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
    .line 161
    move-object/from16 v0, p1

    #@f1
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@f3
    move-object/from16 v18, v0

    #@f5
    .line 162
    const/16 v19, 0x1

    #@f7
    .line 161
    invoke-virtual/range {v18 .. v19}, Ljava/util/BitSet;->get(I)Z

    #@fa
    move-result v18

    #@fb
    .line 159
    if-eqz v18, :cond_6

    #@fd
    .line 165
    const/4 v4, 0x1

    #@fe
    .line 168
    :cond_6
    if-eqz v4, :cond_7

    #@100
    const-string/jumbo v18, " hn"

    #@103
    move-object/from16 v0, v18

    #@105
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@108
    .line 169
    :cond_7
    if-eqz v17, :cond_8

    #@10a
    const-string/jumbo v18, " u24"

    #@10d
    move-object/from16 v0, v18

    #@10f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    .line 171
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@115
    move-result v18

    #@116
    mul-int/lit8 v19, p5, 0x6

    #@118
    sub-int v19, v18, v19

    #@11a
    .line 172
    if-eqz v4, :cond_28

    #@11c
    const/16 v18, 0x5

    #@11e
    .line 171
    :goto_3
    add-int v12, v19, v18

    #@120
    .line 173
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
    .line 175
    if-nez v17, :cond_29

    #@146
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@149
    move-result v5

    #@14a
    .line 177
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
    .line 179
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
    .line 182
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
    .line 186
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
    .line 187
    :cond_9
    if-eqz v10, :cond_a

    #@189
    const-string/jumbo v18, " lr"

    #@18c
    move-object/from16 v0, v18

    #@18e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@191
    .line 188
    :cond_a
    if-eqz v9, :cond_b

    #@193
    const-string/jumbo v18, " hr"

    #@196
    move-object/from16 v0, v18

    #@198
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    .line 190
    :cond_b
    const/4 v11, 0x0

    #@19c
    .line 191
    .local v11, "penalizedDueToUserTriggeredDisconnect":I
    if-eqz p1, :cond_13

    #@19e
    .line 192
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
    .line 193
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
    .line 194
    :cond_c
    if-eqz v7, :cond_33

    #@1b8
    .line 195
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
    .line 196
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
    .line 199
    move-object/from16 v0, p1

    #@1d6
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@1d8
    move/from16 v18, v0

    #@1da
    if-lez v18, :cond_d

    #@1dc
    .line 200
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
    .line 202
    :cond_d
    move-object/from16 v0, p1

    #@1ec
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@1ee
    move/from16 v18, v0

    #@1f0
    if-lez v18, :cond_e

    #@1f2
    .line 203
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
    .line 205
    :cond_e
    move-object/from16 v0, p1

    #@202
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@204
    move/from16 v18, v0

    #@206
    if-lez v18, :cond_f

    #@208
    .line 206
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
    .line 208
    :cond_f
    const/16 v18, 0x0

    #@218
    move/from16 v0, v18

    #@21a
    move-object/from16 v1, p1

    #@21c
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@21e
    .line 210
    :cond_10
    move-object/from16 v0, p2

    #@220
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@222
    move/from16 v18, v0

    #@224
    if-eqz v18, :cond_12

    #@226
    .line 211
    move-object/from16 v0, p1

    #@228
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@22a
    move/from16 v18, v0

    #@22c
    if-gtz v18, :cond_11

    #@22e
    .line 212
    move-object/from16 v0, p1

    #@230
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@232
    move/from16 v18, v0

    #@234
    if-lez v18, :cond_32

    #@236
    .line 215
    :cond_11
    :goto_8
    const/16 v16, 0x33

    #@238
    .line 216
    const/4 v11, 0x1

    #@239
    .line 217
    const-string/jumbo v18, " p1"

    #@23c
    move-object/from16 v0, v18

    #@23e
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    .line 257
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
    .line 258
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
    .line 259
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
    .line 257
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@279
    move-result-object v18

    #@27a
    move-object/from16 v0, v18

    #@27c
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    .line 262
    :cond_13
    if-eqz v3, :cond_16

    #@281
    .line 263
    const-string/jumbo v13, ""

    #@284
    .line 264
    .local v13, "rssiStatus":Ljava/lang/String;
    if-eqz v7, :cond_3b

    #@286
    .line 265
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
    .line 271
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
    .line 272
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
    .line 273
    const-string/jumbo v20, " speed="

    #@2d2
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d5
    move-result-object v19

    #@2d6
    .line 273
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@2d9
    move-result v20

    #@2da
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2dd
    move-result-object v20

    #@2de
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e1
    move-result-object v19

    #@2e2
    .line 274
    const-string/jumbo v20, " score="

    #@2e5
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e8
    move-result-object v19

    #@2e9
    .line 274
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
    .line 272
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
    .line 276
    const-string/jumbo v20, " -> txbadrate="

    #@300
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@303
    move-result-object v19

    #@304
    .line 276
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
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@324
    move-result-object v19

    #@325
    .line 277
    const-string/jumbo v20, " txgoodrate="

    #@328
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32b
    move-result-object v19

    #@32c
    .line 277
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
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34c
    move-result-object v19

    #@34d
    .line 278
    const-string/jumbo v20, " txretriesrate="

    #@350
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@353
    move-result-object v19

    #@354
    .line 278
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
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@374
    move-result-object v19

    #@375
    .line 279
    const-string/jumbo v20, " rxrate="

    #@378
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37b
    move-result-object v19

    #@37c
    .line 279
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
    .line 272
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39c
    move-result-object v19

    #@39d
    .line 280
    const-string/jumbo v20, " userTriggerdPenalty"

    #@3a0
    .line 272
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
    .line 283
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
    .line 284
    if-nez v7, :cond_17

    #@3cb
    .line 283
    if-eqz v10, :cond_3d

    #@3cd
    .line 286
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
    .line 287
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
    .line 289
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
    .line 290
    if-eqz v3, :cond_19

    #@40d
    .line 291
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
    .line 292
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
    .line 291
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
    .line 305
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
    .line 307
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
    .line 309
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
    .line 311
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
    .line 313
    if-eqz v6, :cond_3f

    #@485
    .line 314
    add-int/lit8 v16, v16, -0x4

    #@487
    .line 315
    if-eqz v3, :cond_1b

    #@489
    .line 316
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
    .line 317
    const-string/jumbo v20, " score="

    #@4a1
    .line 316
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a4
    move-result-object v19

    #@4a5
    .line 317
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4a8
    move-result-object v20

    #@4a9
    .line 316
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
    .line 322
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
    .line 324
    if-eqz v7, :cond_40

    #@4d2
    .line 325
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
    .line 326
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
    .line 339
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
    .line 340
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
    .line 342
    if-eqz v3, :cond_1d

    #@51e
    .line 343
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
    .line 344
    const-string/jumbo v20, " lowRSSI count"

    #@53e
    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@541
    move-result-object v19

    #@542
    .line 344
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
    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54f
    move-result-object v19

    #@550
    .line 345
    const-string/jumbo v20, " --> score "

    #@553
    .line 343
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@556
    move-result-object v19

    #@557
    .line 345
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@55a
    move-result-object v20

    #@55b
    .line 343
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
    .line 348
    :cond_1d
    if-eqz v9, :cond_1e

    #@568
    .line 349
    add-int/lit8 v16, v16, 0x5

    #@56a
    .line 350
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
    .line 352
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
    .line 354
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
    .line 357
    const/16 v18, 0x3c

    #@5d8
    move/from16 v0, v16

    #@5da
    move/from16 v1, v18

    #@5dc
    if-le v0, v1, :cond_1f

    #@5de
    .line 358
    const/16 v16, 0x3c

    #@5e0
    .line 360
    :cond_1f
    if-gez v16, :cond_20

    #@5e2
    .line 361
    const/16 v16, 0x0

    #@5e4
    .line 365
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
    .line 366
    if-eqz v3, :cond_21

    #@5f2
    .line 367
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
    .line 369
    :cond_21
    move/from16 v0, v16

    #@612
    move-object/from16 v1, p0

    #@614
    iput v0, v1, Landroid/net/wifi/WifiInfo;->score:I

    #@616
    .line 370
    if-eqz p3, :cond_22

    #@618
    .line 371
    move-object/from16 v0, p3

    #@61a
    move/from16 v1, v16

    #@61c
    invoke-virtual {v0, v1}, Landroid/net/NetworkAgent;->sendNetworkScore(I)V

    #@61f
    .line 374
    :cond_22
    move-object/from16 v0, p6

    #@621
    move/from16 v1, v16

    #@623
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiMetrics;->incrementWifiScoreCount(I)V

    #@626
    .line 375
    new-instance v18, Lcom/android/server/wifi/WifiScoreReport;

    #@628
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62b
    move-result-object v19

    #@62c
    move-object/from16 v0, v18

    #@62e
    move-object/from16 v1, v19

    #@630
    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/WifiScoreReport;-><init>(Ljava/lang/String;I)V

    #@633
    return-object v18

    #@634
    .line 112
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

    #@637
    move-result v18

    #@638
    if-eqz v18, :cond_24

    #@63a
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@63d
    move-result v18

    #@63e
    .line 113
    move-object/from16 v0, p2

    #@640
    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed5:I

    #@642
    move/from16 v19, v0

    #@644
    .line 112
    move/from16 v0, v18

    #@646
    move/from16 v1, v19

    #@648
    if-ge v0, v1, :cond_24

    #@64a
    const/4 v6, 0x1

    #@64b
    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    #@64d
    .end local v6    # "isBadLinkspeed":Z
    :cond_24
    const/4 v6, 0x0

    #@64e
    .restart local v6    # "isBadLinkspeed":Z
    goto/16 :goto_0

    #@650
    .line 116
    :cond_25
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@653
    move-result v18

    #@654
    if-eqz v18, :cond_26

    #@656
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    #@659
    move-result v18

    #@65a
    .line 117
    move-object/from16 v0, p2

    #@65c
    iget v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed5:I

    #@65e
    move/from16 v19, v0

    #@660
    .line 116
    move/from16 v0, v18

    #@662
    move/from16 v1, v19

    #@664
    if-lt v0, v1, :cond_26

    #@666
    const/4 v8, 0x1

    #@667
    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    #@669
    .end local v8    # "isGoodLinkspeed":Z
    :cond_26
    const/4 v8, 0x0

    #@66a
    .restart local v8    # "isGoodLinkspeed":Z
    goto/16 :goto_1

    #@66c
    .line 129
    .restart local v2    # "badLinkspeedcount":I
    :cond_27
    if-lez v2, :cond_2

    #@66e
    .line 130
    add-int/lit8 v2, v2, -0x1

    #@670
    goto/16 :goto_2

    #@672
    .line 172
    .restart local v4    # "homeNetworkBoost":Z
    .restart local v15    # "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    .restart local v17    # "use24Thresholds":Z
    :cond_28
    const/16 v18, 0x0

    #@674
    goto/16 :goto_3

    #@676
    .line 175
    .restart local v12    # "rssi":I
    :cond_29
    const/4 v5, 0x1

    #@677
    goto/16 :goto_4

    #@679
    .line 178
    .restart local v5    # "is24GHz":Z
    :cond_2a
    if-nez v5, :cond_2b

    #@67b
    move-object/from16 v0, p2

    #@67d
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@67f
    move-object/from16 v18, v0

    #@681
    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@684
    move-result v18

    #@685
    move/from16 v0, v18

    #@687
    if-ge v12, v0, :cond_2b

    #@689
    const/4 v7, 0x1

    #@68a
    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    #@68c
    .end local v7    # "isBadRSSI":Z
    :cond_2b
    const/4 v7, 0x0

    #@68d
    .restart local v7    # "isBadRSSI":Z
    goto/16 :goto_5

    #@68f
    .line 180
    :cond_2c
    if-nez v5, :cond_2e

    #@691
    .line 181
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@694
    move-result v18

    #@695
    move-object/from16 v0, p2

    #@697
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@699
    move-object/from16 v19, v0

    #@69b
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@69e
    move-result v19

    #@69f
    move/from16 v0, v18

    #@6a1
    move/from16 v1, v19

    #@6a3
    if-ge v0, v1, :cond_2d

    #@6a5
    const/4 v10, 0x1

    #@6a6
    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    #@6a8
    .end local v10    # "isLowRSSI":Z
    :cond_2d
    const/4 v10, 0x0

    #@6a9
    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    #@6ab
    .line 180
    .end local v10    # "isLowRSSI":Z
    :cond_2e
    const/4 v10, 0x0

    #@6ac
    .restart local v10    # "isLowRSSI":Z
    goto/16 :goto_6

    #@6ae
    .line 183
    :cond_2f
    if-nez v5, :cond_31

    #@6b0
    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@6b3
    move-result v18

    #@6b4
    move-object/from16 v0, p2

    #@6b6
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6b8
    move-object/from16 v19, v0

    #@6ba
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@6bd
    move-result v19

    #@6be
    move/from16 v0, v18

    #@6c0
    move/from16 v1, v19

    #@6c2
    if-lt v0, v1, :cond_30

    #@6c4
    const/4 v9, 0x1

    #@6c5
    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    #@6c7
    .end local v9    # "isHighRSSI":Z
    :cond_30
    const/4 v9, 0x0

    #@6c8
    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    #@6ca
    .line 183
    .end local v9    # "isHighRSSI":Z
    :cond_31
    const/4 v9, 0x0

    #@6cb
    .restart local v9    # "isHighRSSI":Z
    goto/16 :goto_7

    #@6cd
    .line 213
    .restart local v11    # "penalizedDueToUserTriggeredDisconnect":I
    :cond_32
    move-object/from16 v0, p1

    #@6cf
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@6d1
    move/from16 v18, v0

    #@6d3
    if-lez v18, :cond_12

    #@6d5
    goto/16 :goto_8

    #@6d7
    .line 219
    :cond_33
    if-eqz v10, :cond_38

    #@6d9
    .line 220
    move-object/from16 v0, p1

    #@6db
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@6dd
    move/from16 v18, v0

    #@6df
    add-int/lit8 v18, v18, 0x1

    #@6e1
    move/from16 v0, v18

    #@6e3
    move-object/from16 v1, p1

    #@6e5
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@6e7
    .line 221
    move-object/from16 v0, p1

    #@6e9
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@6eb
    move/from16 v18, v0

    #@6ed
    const/16 v19, 0x3e8

    #@6ef
    move/from16 v0, v18

    #@6f1
    move/from16 v1, v19

    #@6f3
    if-le v0, v1, :cond_36

    #@6f5
    .line 224
    move-object/from16 v0, p1

    #@6f7
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@6f9
    move/from16 v18, v0

    #@6fb
    if-lez v18, :cond_34

    #@6fd
    .line 225
    move-object/from16 v0, p1

    #@6ff
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@701
    move/from16 v18, v0

    #@703
    add-int/lit8 v18, v18, -0x1

    #@705
    move/from16 v0, v18

    #@707
    move-object/from16 v1, p1

    #@709
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@70b
    .line 227
    :cond_34
    move-object/from16 v0, p1

    #@70d
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@70f
    move/from16 v18, v0

    #@711
    if-lez v18, :cond_35

    #@713
    .line 228
    move-object/from16 v0, p1

    #@715
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@717
    move/from16 v18, v0

    #@719
    add-int/lit8 v18, v18, -0x1

    #@71b
    move/from16 v0, v18

    #@71d
    move-object/from16 v1, p1

    #@71f
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@721
    .line 230
    :cond_35
    const/16 v18, 0x0

    #@723
    move/from16 v0, v18

    #@725
    move-object/from16 v1, p1

    #@727
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@729
    .line 232
    :cond_36
    move-object/from16 v0, p2

    #@72b
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@72d
    move/from16 v18, v0

    #@72f
    if-eqz v18, :cond_12

    #@731
    .line 233
    move-object/from16 v0, p1

    #@733
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@735
    move/from16 v18, v0

    #@737
    if-gtz v18, :cond_37

    #@739
    .line 234
    move-object/from16 v0, p1

    #@73b
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@73d
    move/from16 v18, v0

    #@73f
    if-lez v18, :cond_12

    #@741
    .line 236
    :cond_37
    const/16 v16, 0x33

    #@743
    .line 237
    const/4 v11, 0x2

    #@744
    .line 238
    const-string/jumbo v18, " p2"

    #@747
    move-object/from16 v0, v18

    #@749
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74c
    goto/16 :goto_9

    #@74e
    .line 240
    :cond_38
    if-nez v9, :cond_12

    #@750
    .line 241
    move-object/from16 v0, p1

    #@752
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@754
    move/from16 v18, v0

    #@756
    add-int/lit8 v18, v18, 0x1

    #@758
    move/from16 v0, v18

    #@75a
    move-object/from16 v1, p1

    #@75c
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@75e
    .line 242
    move-object/from16 v0, p1

    #@760
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@762
    move/from16 v18, v0

    #@764
    const/16 v19, 0x3e8

    #@766
    move/from16 v0, v18

    #@768
    move/from16 v1, v19

    #@76a
    if-le v0, v1, :cond_3a

    #@76c
    .line 245
    move-object/from16 v0, p1

    #@76e
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@770
    move/from16 v18, v0

    #@772
    if-lez v18, :cond_39

    #@774
    .line 246
    move-object/from16 v0, p1

    #@776
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@778
    move/from16 v18, v0

    #@77a
    add-int/lit8 v18, v18, -0x1

    #@77c
    move/from16 v0, v18

    #@77e
    move-object/from16 v1, p1

    #@780
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@782
    .line 248
    :cond_39
    const/16 v18, 0x0

    #@784
    move/from16 v0, v18

    #@786
    move-object/from16 v1, p1

    #@788
    iput v0, v1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@78a
    .line 250
    :cond_3a
    move-object/from16 v0, p2

    #@78c
    iget-boolean v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@78e
    move/from16 v18, v0

    #@790
    if-eqz v18, :cond_12

    #@792
    .line 251
    move-object/from16 v0, p1

    #@794
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@796
    move/from16 v18, v0

    #@798
    if-lez v18, :cond_12

    #@79a
    .line 252
    const/16 v16, 0x33

    #@79c
    .line 253
    const/4 v11, 0x3

    #@79d
    .line 254
    const-string/jumbo v18, " p3"

    #@7a0
    move-object/from16 v0, v18

    #@7a2
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a5
    goto/16 :goto_9

    #@7a7
    .line 266
    .restart local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3b
    if-eqz v9, :cond_3c

    #@7a9
    .line 267
    new-instance v18, Ljava/lang/StringBuilder;

    #@7ab
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7ae
    move-object/from16 v0, v18

    #@7b0
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b3
    move-result-object v18

    #@7b4
    const-string/jumbo v19, " highRSSI "

    #@7b7
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7ba
    move-result-object v18

    #@7bb
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7be
    move-result-object v13

    #@7bf
    goto/16 :goto_a

    #@7c1
    .line 268
    :cond_3c
    if-eqz v10, :cond_14

    #@7c3
    .line 269
    new-instance v18, Ljava/lang/StringBuilder;

    #@7c5
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@7c8
    move-object/from16 v0, v18

    #@7ca
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7cd
    move-result-object v18

    #@7ce
    const-string/jumbo v19, " lowRSSI "

    #@7d1
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d4
    move-result-object v18

    #@7d5
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d8
    move-result-object v13

    #@7d9
    goto/16 :goto_a

    #@7db
    .line 294
    .end local v13    # "rssiStatus":Ljava/lang/String;
    :cond_3d
    move-object/from16 v0, p0

    #@7dd
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txBadRate:D

    #@7df
    move-wide/from16 v18, v0

    #@7e1
    const-wide v20, 0x3fd3333333333333L    # 0.3

    #@7e6
    cmpg-double v18, v18, v20

    #@7e8
    if-gez v18, :cond_19

    #@7ea
    .line 295
    move-object/from16 v0, p0

    #@7ec
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@7ee
    move/from16 v18, v0

    #@7f0
    if-lez v18, :cond_3e

    #@7f2
    .line 296
    move-object/from16 v0, p0

    #@7f4
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@7f6
    move/from16 v18, v0

    #@7f8
    add-int/lit8 v18, v18, -0x1

    #@7fa
    move/from16 v0, v18

    #@7fc
    move-object/from16 v1, p0

    #@7fe
    iput v0, v1, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@800
    .line 298
    :cond_3e
    const-string/jumbo v18, " ls-=%d"

    #@803
    const/16 v19, 0x1

    #@805
    move/from16 v0, v19

    #@807
    new-array v0, v0, [Ljava/lang/Object;

    #@809
    move-object/from16 v19, v0

    #@80b
    move-object/from16 v0, p0

    #@80d
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@80f
    move/from16 v20, v0

    #@811
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@814
    move-result-object v20

    #@815
    const/16 v21, 0x0

    #@817
    aput-object v20, v19, v21

    #@819
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81c
    move-result-object v18

    #@81d
    move-object/from16 v0, v18

    #@81f
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@822
    .line 299
    if-eqz v3, :cond_19

    #@824
    .line 300
    const-string/jumbo v18, "WifiStateMachine"

    #@827
    new-instance v19, Ljava/lang/StringBuilder;

    #@829
    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    #@82c
    const-string/jumbo v20, " good link -> stuck count ="

    #@82f
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@832
    move-result-object v19

    #@833
    .line 301
    move-object/from16 v0, p0

    #@835
    iget v0, v0, Landroid/net/wifi/WifiInfo;->linkStuckCount:I

    #@837
    move/from16 v20, v0

    #@839
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@83c
    move-result-object v20

    #@83d
    .line 300
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@840
    move-result-object v19

    #@841
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@844
    move-result-object v19

    #@845
    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@848
    goto/16 :goto_b

    #@84a
    .line 319
    :cond_3f
    if-eqz v8, :cond_1b

    #@84c
    move-object/from16 v0, p0

    #@84e
    iget-wide v0, v0, Landroid/net/wifi/WifiInfo;->txSuccessRate:D

    #@850
    move-wide/from16 v18, v0

    #@852
    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    #@854
    cmpl-double v18, v18, v20

    #@856
    if-lez v18, :cond_1b

    #@858
    .line 320
    add-int/lit8 v16, v16, 0x4

    #@85a
    goto/16 :goto_c

    #@85c
    .line 328
    :cond_40
    if-eqz v10, :cond_41

    #@85e
    .line 329
    const/16 v18, 0x1

    #@860
    move/from16 v0, v18

    #@862
    move-object/from16 v1, p0

    #@864
    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@866
    .line 330
    move-object/from16 v0, p0

    #@868
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@86a
    move/from16 v18, v0

    #@86c
    if-lez v18, :cond_1c

    #@86e
    .line 332
    move-object/from16 v0, p0

    #@870
    iget v0, v0, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@872
    move/from16 v18, v0

    #@874
    add-int/lit8 v18, v18, -0x1

    #@876
    move/from16 v0, v18

    #@878
    move-object/from16 v1, p0

    #@87a
    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@87c
    goto/16 :goto_d

    #@87e
    .line 335
    :cond_41
    const/16 v18, 0x0

    #@880
    move/from16 v0, v18

    #@882
    move-object/from16 v1, p0

    #@884
    iput v0, v1, Landroid/net/wifi/WifiInfo;->badRssiCount:I

    #@886
    .line 336
    const/16 v18, 0x0

    #@888
    move/from16 v0, v18

    #@88a
    move-object/from16 v1, p0

    #@88c
    iput v0, v1, Landroid/net/wifi/WifiInfo;->lowRssiCount:I

    #@88e
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
