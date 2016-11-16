.class public Lcom/android/server/wifi/WifiQualifiedNetworkSelector;
.super Ljava/lang/Object;
.source "WifiQualifiedNetworkSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;,
        Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    }
.end annotation


# static fields
.field public static final BAND_AWARD_5GHz:I = 0x28

.field public static final BSSID_BLACKLIST_EXPIRE_TIME:I = 0x493e0

.field public static final BSSID_BLACKLIST_THRESHOLD:I = 0x3

.field private static final FORCE_DEBUG:Z = true

.field private static final INVALID_TIME_STAMP:I = -0x1

.field public static final LAST_SELECTION_AWARD:I = 0x1e0

.field public static final MINIMUM_2G_ACCEPT_RSSI:I = -0x55

.field public static final MINIMUM_5G_ACCEPT_RSSI:I = -0x52

.field private static final MINIMUM_QUALIFIED_NETWORK_SELECTION_INTERVAL:I = 0x2710

.field public static final PASSPOINT_SECURITY_AWARD:I = 0x28

.field public static final QUALIFIED_RSSI_24G_BAND:I = -0x49

.field public static final QUALIFIED_RSSI_5G_BAND:I = -0x46

.field public static final RSSI_SATURATION_2G_BAND:I = -0x3c

.field public static final RSSI_SATURATION_5G_BAND:I = -0x39

.field public static final RSSI_SCORE_OFFSET:I = 0x55

.field public static final RSSI_SCORE_SLOPE:I = 0x4

.field public static final SAME_BSSID_AWARD:I = 0x18

.field public static final SAME_NETWORK_AWARD:I = 0x10

.field public static final SCAN_RESULT_MAXIMUNM_AGE:I = 0x9c40

.field public static final SECURITY_AWARD:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WifiQualifiedNetworkSelector:"


# instance fields
.field private mBssidBlacklist:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mCurrentBssid:Ljava/lang/String;

.field private mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

.field private mDbg:Z

.field private volatile mFilteredScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastQualifiedNetworkSelectionTimeStamp:J

.field private mLastSelectionAward:I

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

.field private final mNoIntnetPenalty:I

.field private mPasspointSecurityAward:I

.field private mRssiScoreOffset:I

.field private mRssiScoreSlope:I

.field private mSameBssidAward:I

.field private mScanDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;"
        }
    .end annotation
.end field

.field private mScoreManager:Landroid/net/NetworkScoreManager;

.field private mSecurityAward:I

.field private mUserPreferedBand:I

.field private mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;


# direct methods
.method static synthetic -wrap0(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 1
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiConfigManager;Landroid/content/Context;Landroid/net/wifi/WifiInfo;Lcom/android/server/wifi/Clock;)V
    .locals 4
    .param p1, "configureStore"    # Lcom/android/server/wifi/WifiConfigManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 59
    iput-boolean v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@7
    .line 60
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@9
    .line 61
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@b
    .line 63
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@d
    .line 66
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    #@f
    .line 99
    const-wide/16 v0, -0x1

    #@11
    iput-wide v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    #@13
    .line 101
    new-instance v0, Landroid/util/LocalLog;

    #@15
    const/16 v1, 0x200

    #@17
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@1c
    .line 102
    const/4 v0, 0x4

    #@1d
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@1f
    .line 103
    const/16 v0, 0x55

    #@21
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    #@23
    .line 104
    const/16 v0, 0x18

    #@25
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@27
    .line 105
    const/16 v0, 0x1e0

    #@29
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    #@2b
    .line 106
    const/16 v0, 0x28

    #@2d
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@2f
    .line 107
    const/16 v0, 0x50

    #@31
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@33
    .line 108
    const/4 v0, 0x0

    #@34
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@36
    .line 110
    new-instance v0, Ljava/util/HashMap;

    #@38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3b
    .line 109
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@3d
    .line 165
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3f
    .line 166
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@41
    .line 167
    iput-object p4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@43
    .line 169
    const-string/jumbo v0, "network_score"

    #@46
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Landroid/net/NetworkScoreManager;

    #@4c
    .line 168
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@4e
    .line 170
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@50
    if-eqz v0, :cond_0

    #@52
    .line 171
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@54
    invoke-direct {v0, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    #@57
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@59
    .line 172
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@5b
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@5d
    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    #@60
    .line 179
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@63
    move-result-object v0

    #@64
    .line 180
    const v1, 0x10e001a

    #@67
    .line 179
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@6a
    move-result v0

    #@6b
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@6d
    .line 181
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@70
    move-result-object v0

    #@71
    .line 182
    const v1, 0x10e0019

    #@74
    .line 181
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@77
    move-result v0

    #@78
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    #@7a
    .line 183
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7d
    move-result-object v0

    #@7e
    .line 184
    const v1, 0x10e001b

    #@81
    .line 183
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@84
    move-result v0

    #@85
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@87
    .line 185
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8a
    move-result-object v0

    #@8b
    .line 186
    const v1, 0x10e001c

    #@8e
    .line 185
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@91
    move-result v0

    #@92
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    #@94
    .line 187
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@97
    move-result-object v0

    #@98
    .line 188
    const v1, 0x10e001d

    #@9b
    .line 187
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@9e
    move-result v0

    #@9f
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@a1
    .line 189
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a4
    move-result-object v0

    #@a5
    .line 190
    const v1, 0x10e001e

    #@a8
    .line 189
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@ab
    move-result v0

    #@ac
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@ae
    .line 191
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@b0
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@b5
    move-result v0

    #@b6
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    #@b8
    add-int/2addr v0, v1

    #@b9
    .line 192
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@bb
    .line 191
    mul-int/2addr v0, v1

    #@bc
    .line 192
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@be
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c3
    move-result v1

    #@c4
    .line 191
    add-int/2addr v0, v1

    #@c5
    .line 193
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@c7
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@cc
    move-result v1

    #@cd
    .line 191
    add-int/2addr v0, v1

    #@ce
    .line 193
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@d0
    .line 191
    add-int/2addr v0, v1

    #@d1
    .line 193
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@d3
    .line 191
    add-int/2addr v0, v1

    #@d4
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    #@d6
    .line 164
    return-void

    #@d7
    .line 174
    :cond_0
    const-string/jumbo v0, "No network score service: Couldn\'t register as a WiFi score Manager, type=1 service= network_score"

    #@da
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@dd
    .line 176
    iput-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@df
    goto :goto_0
.end method

.method private getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 201
    if-nez p1, :cond_0

    #@3
    .line 202
    return-object v0

    #@4
    .line 205
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const-string/jumbo v1, ":"

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method private isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 218
    if-nez p1, :cond_0

    #@3
    .line 219
    const-string/jumbo v1, "Disconnected"

    #@6
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@9
    .line 220
    return v3

    #@a
    .line 222
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Current network is: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " ,ID is: "

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    .line 223
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@30
    .line 228
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 229
    const-string/jumbo v1, "Current is ephemeral. Start reselect"

    #@37
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@3a
    .line 230
    return v3

    #@3b
    .line 234
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3d
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_2

    #@43
    .line 235
    const-string/jumbo v1, "Current network is open network"

    #@46
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@49
    .line 236
    return v3

    #@4a
    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@4c
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@4f
    move-result v1

    #@50
    if-eqz v1, :cond_4

    #@52
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@54
    const/4 v2, 0x2

    #@55
    if-eq v1, v2, :cond_4

    #@57
    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v2, "Current band dose not match user preference. Start Qualified Network Selection Current band = "

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    .line 242
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@65
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@68
    move-result v1

    #@69
    if-eqz v1, :cond_3

    #@6b
    const-string/jumbo v1, "2.4GHz band"

    #@6e
    .line 241
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 243
    const-string/jumbo v2, "UserPreference band = "

    #@75
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 243
    iget v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@7b
    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v1

    #@83
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@86
    .line 244
    return v3

    #@87
    .line 243
    :cond_3
    const-string/jumbo v1, "5GHz band"

    #@8a
    goto :goto_0

    #@8b
    .line 247
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8d
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@90
    move-result v0

    #@91
    .line 248
    .local v0, "currentRssi":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@93
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_6

    #@99
    .line 249
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@9b
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@9d
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@a0
    move-result v1

    #@a1
    if-ge v0, v1, :cond_6

    #@a3
    .line 252
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v2, "Current band = "

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@b1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@b4
    move-result v1

    #@b5
    if-eqz v1, :cond_8

    #@b7
    const-string/jumbo v1, "2.4GHz band"

    #@ba
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bd
    move-result-object v1

    #@be
    .line 253
    const-string/jumbo v2, "current RSSI is: "

    #@c1
    .line 252
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v1

    #@c5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cc
    move-result-object v1

    #@cd
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@d0
    .line 254
    return v3

    #@d1
    .line 250
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@d3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@d6
    move-result v1

    #@d7
    if-eqz v1, :cond_7

    #@d9
    .line 251
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@db
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@dd
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@e0
    move-result v1

    #@e1
    if-lt v0, v1, :cond_5

    #@e3
    .line 257
    :cond_7
    const/4 v1, 0x1

    #@e4
    return v1

    #@e5
    .line 252
    :cond_8
    const-string/jumbo v1, "5GHz band"

    #@e8
    goto :goto_1
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 124
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 122
    :cond_0
    return-void
.end method

.method private localLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 128
    return-void
.end method

.method private needQualifiedNetworkSelection(ZZZZ)Z
    .locals 10
    .param p1, "isLinkDebouncing"    # Z
    .param p2, "isConnected"    # Z
    .param p3, "isDisconnected"    # Z
    .param p4, "isSupplicantTransientState"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v8, 0x0

    #@3
    .line 276
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 277
    const-string/jumbo v1, "empty scan result"

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@11
    .line 278
    return v8

    #@12
    .line 282
    :cond_0
    if-eqz p1, :cond_1

    #@14
    .line 283
    const-string/jumbo v1, "Need not Qualified Network Selection during L2 debouncing"

    #@17
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@1a
    .line 284
    return v8

    #@1b
    .line 287
    :cond_1
    if-eqz p2, :cond_6

    #@1d
    .line 291
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_2

    #@25
    .line 292
    const-string/jumbo v1, "Switch network under connection is not allowed"

    #@28
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@2b
    .line 293
    return v8

    #@2c
    .line 298
    :cond_2
    iget-wide v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    #@2e
    const-wide/16 v6, -0x1

    #@30
    cmp-long v1, v4, v6

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 299
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@36
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@39
    move-result-wide v4

    #@3a
    iget-wide v6, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    #@3c
    sub-long v2, v4, v6

    #@3e
    .line 300
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    #@40
    cmp-long v1, v2, v4

    #@42
    if-gez v1, :cond_3

    #@44
    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Too short to last successful Qualified Network Selection Gap is:"

    #@4c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    .line 302
    const-string/jumbo v4, " ms!"

    #@57
    .line 301
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v1

    #@5b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v1

    #@5f
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@62
    .line 303
    return v8

    #@63
    .line 308
    .end local v2    # "gap":J
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@65
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@67
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@6a
    move-result v4

    #@6b
    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@6e
    move-result-object v0

    #@6f
    .line 309
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_4

    #@71
    .line 313
    return v8

    #@72
    .line 316
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@74
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z

    #@77
    move-result v1

    #@78
    if-nez v1, :cond_5

    #@7a
    .line 318
    const-string/jumbo v1, "Current network is not qualified"

    #@7d
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@80
    .line 319
    return v9

    #@81
    .line 321
    :cond_5
    return v8

    #@82
    .line 323
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    if-eqz p3, :cond_7

    #@84
    .line 324
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@86
    .line 325
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@88
    .line 327
    if-eqz p4, :cond_8

    #@8a
    .line 328
    return v8

    #@8b
    .line 332
    :cond_7
    const-string/jumbo v1, "WifiStateMachine is not on connected or disconnected state"

    #@8e
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@91
    .line 333
    return v8

    #@92
    .line 336
    :cond_8
    return v9
.end method

.method private static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 960
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "NULL"

    #@5
    :goto_0
    return-object v0

    #@6
    .line 961
    :cond_0
    const-string/jumbo v0, "%s:%s"

    #@9
    const/4 v1, 0x2

    #@a
    new-array v1, v1, [Ljava/lang/Object;

    #@c
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@e
    const/4 v3, 0x0

    #@f
    aput-object v2, v1, v3

    #@11
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@13
    const/4 v3, 0x1

    #@14
    aput-object v2, v1, v3

    #@16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    goto :goto_0
.end method

.method private updateBssidBlacklist()V
    .locals 6

    #@0
    .prologue
    .line 562
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@2
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v0

    #@a
    .line 563
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 564
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@16
    .line 565
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-eqz v1, :cond_0

    #@18
    iget-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 566
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@1e
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@21
    move-result-wide v2

    #@22
    iget-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    #@24
    sub-long/2addr v2, v4

    #@25
    .line 567
    const-wide/32 v4, 0x493e0

    #@28
    .line 566
    cmp-long v2, v2, v4

    #@2a
    if-ltz v2, :cond_0

    #@2c
    .line 568
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2f
    goto :goto_0

    #@30
    .line 561
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_1
    return-void
.end method

.method private updateSavedNetworkSelectionStatus()V
    .locals 11

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 408
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    .line 409
    .local v4, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_0

    #@d
    .line 410
    const-string/jumbo v7, "no saved network"

    #@10
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@13
    .line 411
    return-void

    #@14
    .line 414
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    #@16
    const-string/jumbo v7, "Saved Network List\n"

    #@19
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@1c
    .line 415
    .local v5, "sbuf":Ljava/lang/StringBuffer;
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1f
    move-result-object v3

    #@20
    .local v3, "network$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v7

    #@24
    if-eqz v7, :cond_3

    #@26
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v2

    #@2a
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    #@2c
    .line 416
    .local v2, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2e
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@30
    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@33
    move-result-object v0

    #@34
    .line 418
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@37
    move-result-object v6

    #@38
    .line 421
    .local v6, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_1

    #@3e
    .line 422
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@40
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@42
    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(I)Z

    #@45
    .line 426
    :cond_1
    const/4 v7, 0x0

    #@46
    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@49
    .line 427
    const/high16 v7, -0x80000000

    #@4b
    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    #@4e
    .line 428
    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    #@51
    .line 431
    new-instance v7, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v8, "    "

    #@59
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v7

    #@5d
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v7

    #@65
    const-string/jumbo v8, " "

    #@68
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v7

    #@6c
    const-string/jumbo v8, " User Preferred BSSID:"

    #@6f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v7

    #@73
    .line 432
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@75
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    .line 432
    const-string/jumbo v8, " FQDN:"

    #@7c
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    .line 432
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@82
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    .line 432
    const-string/jumbo v8, " "

    #@89
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    .line 433
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@90
    move-result-object v8

    #@91
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    .line 433
    const-string/jumbo v8, " Disable account: "

    #@98
    .line 431
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v7

    #@9c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9f
    move-result-object v7

    #@a0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@a3
    .line 434
    const/4 v1, 0x0

    #@a4
    .line 435
    .local v1, "index":I
    :goto_1
    const/16 v7, 0xa

    #@a6
    .line 434
    if-ge v1, v7, :cond_2

    #@a8
    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    invoke-virtual {v6, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@b0
    move-result v8

    #@b1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    const-string/jumbo v8, " "

    #@b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v7

    #@bc
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bf
    move-result-object v7

    #@c0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@c3
    .line 435
    add-int/lit8 v1, v1, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 438
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    const-string/jumbo v8, "Connect Choice:"

    #@ce
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d1
    move-result-object v7

    #@d2
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@d5
    move-result-object v8

    #@d6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    const-string/jumbo v8, " set time:"

    #@dd
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e0
    move-result-object v7

    #@e1
    .line 439
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    #@e4
    move-result-wide v8

    #@e5
    .line 438
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v7

    #@e9
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ec
    move-result-object v7

    #@ed
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f0
    .line 440
    const-string/jumbo v7, "\n"

    #@f3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f6
    goto/16 :goto_0

    #@f8
    .line 442
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "index":I
    .end local v2    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@fb
    move-result-object v7

    #@fc
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@ff
    .line 407
    return-void
.end method


# virtual methods
.method calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I
    .locals 12
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "currentNetwork"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "sameBssid"    # Z
    .param p5, "sameSelect"    # Z
    .param p6, "sbuf"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 345
    iget v5, p1, Landroid/net/wifi/ScanResult;->level:I

    #@2
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@4
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@6
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@9
    move-result v8

    #@a
    if-gt v5, v8, :cond_7

    #@c
    .line 346
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    #@e
    .line 347
    .local v3, "rssi":I
    :goto_0
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    #@10
    add-int/2addr v5, v3

    #@11
    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@13
    mul-int/2addr v5, v8

    #@14
    add-int/lit8 v4, v5, 0x0

    #@16
    .line 348
    .local v4, "score":I
    new-instance v5, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v8, " RSSI score: "

    #@1e
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v5

    #@26
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v5

    #@2a
    move-object/from16 v0, p6

    #@2c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2f
    .line 349
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 351
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@37
    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    #@39
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@3c
    move-result v5

    #@3d
    add-int/2addr v4, v5

    #@3e
    .line 352
    new-instance v5, Ljava/lang/StringBuilder;

    #@40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@43
    const-string/jumbo v8, " 5GHz bonus: "

    #@46
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v5

    #@4a
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@4c
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4e
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@51
    move-result v8

    #@52
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v5

    #@5a
    move-object/from16 v0, p6

    #@5c
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5f
    .line 356
    :cond_0
    if-eqz p5, :cond_1

    #@61
    .line 357
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@63
    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@66
    move-result-wide v8

    #@67
    .line 358
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@69
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    #@6c
    move-result-wide v10

    #@6d
    .line 357
    sub-long v6, v8, v10

    #@6f
    .line 360
    .local v6, "timeDifference":J
    const-wide/16 v8, 0x0

    #@71
    cmp-long v5, v6, v8

    #@73
    if-lez v5, :cond_1

    #@75
    .line 361
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    #@77
    const-wide/16 v8, 0x3e8

    #@79
    div-long v8, v6, v8

    #@7b
    const-wide/16 v10, 0x3c

    #@7d
    div-long/2addr v8, v10

    #@7e
    long-to-int v8, v8

    #@7f
    sub-int v2, v5, v8

    #@81
    .line 362
    .local v2, "bonus":I
    if-lez v2, :cond_8

    #@83
    move v5, v2

    #@84
    :goto_1
    add-int/2addr v4, v5

    #@85
    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    const-string/jumbo v8, " User selected it last time "

    #@8d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    const-wide/16 v8, 0x3e8

    #@93
    div-long v8, v6, v8

    #@95
    const-wide/16 v10, 0x3c

    #@97
    div-long/2addr v8, v10

    #@98
    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 364
    const-string/jumbo v8, " minutes ago, bonus:"

    #@9f
    .line 363
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@aa
    move-result-object v5

    #@ab
    move-object/from16 v0, p6

    #@ad
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@b0
    .line 369
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_1
    if-eq p2, p3, :cond_2

    #@b2
    invoke-virtual {p2, p3}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@b5
    move-result v5

    #@b6
    if-eqz v5, :cond_3

    #@b8
    .line 370
    :cond_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@ba
    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@bc
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@bf
    move-result v5

    #@c0
    add-int/2addr v4, v5

    #@c1
    .line 371
    new-instance v5, Ljava/lang/StringBuilder;

    #@c3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@c6
    const-string/jumbo v8, " Same network with current associated. Bonus: "

    #@c9
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v5

    #@cd
    .line 372
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@cf
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@d4
    move-result v8

    #@d5
    .line 371
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d8
    move-result-object v5

    #@d9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dc
    move-result-object v5

    #@dd
    move-object/from16 v0, p6

    #@df
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@e2
    .line 376
    :cond_3
    if-eqz p4, :cond_4

    #@e4
    .line 377
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@e6
    add-int/2addr v4, v5

    #@e7
    .line 378
    new-instance v5, Ljava/lang/StringBuilder;

    #@e9
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@ec
    const-string/jumbo v8, " Same BSSID with current association. Bonus: "

    #@ef
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v5

    #@f3
    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@f5
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f8
    move-result-object v5

    #@f9
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fc
    move-result-object v5

    #@fd
    move-object/from16 v0, p6

    #@ff
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@102
    .line 382
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@105
    move-result v5

    #@106
    if-eqz v5, :cond_9

    #@108
    .line 383
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@10a
    add-int/2addr v4, v5

    #@10b
    .line 384
    new-instance v5, Ljava/lang/StringBuilder;

    #@10d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@110
    const-string/jumbo v8, " Passpoint Bonus:"

    #@113
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v5

    #@117
    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@119
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11c
    move-result-object v5

    #@11d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@120
    move-result-object v5

    #@121
    move-object/from16 v0, p6

    #@123
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@126
    .line 392
    :cond_5
    :goto_2
    iget v5, p2, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@128
    if-lez v5, :cond_6

    #@12a
    iget-boolean v5, p2, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@12c
    if-eqz v5, :cond_a

    #@12e
    .line 398
    :cond_6
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@130
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@133
    const-string/jumbo v8, " Score for scanResult: "

    #@136
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@139
    move-result-object v5

    #@13a
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v5

    #@13e
    const-string/jumbo v8, " and Network ID: "

    #@141
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    move-result-object v5

    #@145
    .line 399
    iget v8, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@147
    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    .line 399
    const-string/jumbo v8, " final score:"

    #@14e
    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v5

    #@152
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@155
    move-result-object v5

    #@156
    .line 399
    const-string/jumbo v8, "\n\n"

    #@159
    .line 398
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v5

    #@15d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@160
    move-result-object v5

    #@161
    move-object/from16 v0, p6

    #@163
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@166
    .line 401
    return v4

    #@167
    .line 346
    .end local v3    # "rssi":I
    .end local v4    # "score":I
    :cond_7
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@169
    iget-object v5, v5, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@16b
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@16e
    move-result v3

    #@16f
    .restart local v3    # "rssi":I
    goto/16 :goto_0

    #@171
    .line 362
    .restart local v2    # "bonus":I
    .restart local v4    # "score":I
    .restart local v6    # "timeDifference":J
    :cond_8
    const/4 v5, 0x0

    #@172
    goto/16 :goto_1

    #@174
    .line 385
    .end local v2    # "bonus":I
    .end local v6    # "timeDifference":J
    :cond_9
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@176
    invoke-virtual {v5, p2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@179
    move-result v5

    #@17a
    if-nez v5, :cond_5

    #@17c
    .line 386
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@17e
    add-int/2addr v4, v5

    #@17f
    .line 387
    new-instance v5, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    const-string/jumbo v8, " Secure network Bonus:"

    #@187
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    move-result-object v5

    #@18b
    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@18d
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@190
    move-result-object v5

    #@191
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v5

    #@195
    move-object/from16 v0, p6

    #@197
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19a
    goto :goto_2

    #@19b
    .line 393
    :cond_a
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    #@19d
    sub-int/2addr v4, v5

    #@19e
    .line 394
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a0
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1a3
    const-string/jumbo v8, " No internet Penalty:-"

    #@1a6
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v5

    #@1aa
    iget v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    #@1ac
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v5

    #@1b0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b3
    move-result-object v5

    #@1b4
    move-object/from16 v0, p6

    #@1b6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1b9
    goto/16 :goto_3
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 966
    const-string/jumbo v0, "Dump of WifiQualifiedNetworkSelector"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 967
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log Begin ----"

    #@9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 968
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@e
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@11
    .line 969
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log End ----"

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 965
    return-void
.end method

.method public enableBssidForQualityNetworkSelection(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "bssid"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 532
    if-eqz p2, :cond_1

    #@5
    .line 533
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@7
    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v4

    #@b
    if-eqz v4, :cond_0

    #@d
    :goto_0
    return v2

    #@e
    :cond_0
    move v2, v3

    #@f
    goto :goto_0

    #@10
    .line 535
    :cond_1
    if-eqz p1, :cond_2

    #@12
    .line 536
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@14
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@1a
    .line 537
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v1, :cond_3

    #@1c
    .line 539
    new-instance v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@1e
    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;)V

    #@21
    .line 540
    .local v0, "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    iget v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    iput v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@27
    .line 541
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@29
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 552
    .end local v0    # "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_2
    return v3

    #@2d
    .line 542
    .restart local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_3
    iget-boolean v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@2f
    if-nez v4, :cond_2

    #@31
    .line 543
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    iput v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@37
    .line 544
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@39
    const/4 v5, 0x3

    #@3a
    if-lt v4, v5, :cond_2

    #@3c
    .line 545
    iput-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@3e
    .line 546
    iget-object v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@40
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@43
    move-result-wide v4

    #@44
    iput-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    #@46
    .line 547
    return v2
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 197
    if-gtz p1, :cond_0

    #@3
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@5
    .line 196
    return-void
.end method

.method public getConnetionTargetNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@2
    return-object v0
.end method

.method getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;
    .locals 10
    .param p1, "scoreEvaluator"    # Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    #@0
    .prologue
    const/4 v9, 0x2

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x1

    #@3
    .line 892
    const/4 v0, 0x0

    #@4
    .line 893
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getBestCandidateType()I

    #@7
    move-result v4

    #@8
    packed-switch v4, :pswitch_data_0

    #@b
    .line 933
    const-string/jumbo v4, "Unhandled ExternalScoreEvaluator case. No candidate selected."

    #@e
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@11
    .line 936
    .end local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    #@12
    .line 896
    .restart local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    #@15
    move-result-object v3

    #@16
    .line 898
    .local v3, "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@18
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@1b
    move-result-object v2

    #@1c
    .line 902
    .local v2, "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1e
    .line 903
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 905
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@24
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    #@27
    move-result v4

    #@28
    .line 904
    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@2a
    .line 907
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2c
    .line 908
    const/4 v5, -0x1

    #@2d
    .line 907
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@30
    .line 910
    const-string/jumbo v4, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    #@33
    const/4 v5, 0x3

    #@34
    new-array v5, v5, [Ljava/lang/Object;

    #@36
    .line 912
    invoke-static {v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@39
    move-result-object v6

    #@3a
    aput-object v6, v5, v8

    #@3c
    iget v6, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3e
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@41
    move-result-object v6

    #@42
    aput-object v6, v5, v7

    #@44
    .line 913
    iget-boolean v6, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@49
    move-result-object v6

    #@4a
    aput-object v6, v5, v9

    #@4c
    .line 910
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@53
    .line 915
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@5a
    .line 917
    move-object v0, v2

    #@5b
    .line 918
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@5c
    .line 921
    .end local v2    # "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    #@5f
    move-result-object v1

    #@60
    .line 922
    .local v1, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getSavedConfig()Landroid/net/wifi/WifiConfiguration;

    #@63
    move-result-object v0

    #@64
    .line 923
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@6b
    .line 924
    const-string/jumbo v4, "new scored candidate %s network ID:%d"

    #@6e
    new-array v5, v9, [Ljava/lang/Object;

    #@70
    .line 925
    invoke-static {v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@73
    move-result-object v6

    #@74
    aput-object v6, v5, v8

    #@76
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@7b
    move-result-object v6

    #@7c
    aput-object v6, v5, v7

    #@7e
    .line 924
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@85
    goto :goto_0

    #@86
    .line 929
    .end local v1    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    const-string/jumbo v4, "ExternalScoreEvaluator did not see any good candidates."

    #@89
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@8c
    goto :goto_0

    #@8d
    .line 893
    nop

    #@8e
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getFilteredScanDetails()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    #@2
    return-object v0
.end method

.method getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;
    .locals 3
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;
    .param p2, "isActiveNetwork"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 948
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@7
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 949
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@f
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    #@12
    move-result v0

    #@13
    .line 950
    .local v0, "networkScore":I
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-static {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v2, " has score: "

    #@23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@32
    .line 951
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    return-object v1

    #@37
    .line 953
    .end local v0    # "networkScore":I
    :cond_0
    return-object v2
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@8
    .line 582
    .local v0, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v0, :cond_0

    #@a
    const/4 v1, 0x0

    #@b
    :goto_0
    return v1

    #@c
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@e
    goto :goto_0
.end method

.method public selectQualifiedNetwork(ZZLjava/util/List;ZZZZ)Landroid/net/wifi/WifiConfiguration;
    .locals 48
    .param p1, "forceSelectNetwork"    # Z
    .param p2, "isUntrustedConnectionsAllowed"    # Z
    .param p4, "isLinkDebouncing"    # Z
    .param p5, "isConnected"    # Z
    .param p6, "isDisconnected"    # Z
    .param p7, "isSupplicantTransient"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/ScanDetail;",
            ">;ZZZZ)",
            "Landroid/net/wifi/WifiConfiguration;"
        }
    .end annotation

    #@0
    .prologue
    .line 612
    .local p3, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const-string/jumbo v6, "==========start qualified Network Selection=========="

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@8
    .line 613
    move-object/from16 v0, p3

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@e
    .line 614
    new-instance v19, Ljava/util/ArrayList;

    #@10
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 615
    .local v19, "filteredScanDetails":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object/from16 v0, p0

    #@15
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@17
    if-nez v6, :cond_0

    #@19
    .line 617
    move-object/from16 v0, p0

    #@1b
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@21
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@24
    move-result v9

    #@25
    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@28
    move-result-object v6

    #@29
    .line 616
    move-object/from16 v0, p0

    #@2b
    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@2d
    .line 622
    :cond_0
    move-object/from16 v0, p0

    #@2f
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@31
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    move-object/from16 v0, p0

    #@37
    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@39
    .line 624
    if-nez p1, :cond_1

    #@3b
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, p4

    #@3f
    move/from16 v2, p5

    #@41
    move/from16 v3, p6

    #@43
    move/from16 v4, p7

    #@45
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->needQualifiedNetworkSelection(ZZZZ)Z

    #@48
    move-result v6

    #@49
    if-eqz v6, :cond_5

    #@4b
    .line 632
    :cond_1
    const/high16 v16, -0x80000000

    #@4d
    .line 633
    .local v16, "currentHighestScore":I
    const/16 v37, 0x0

    #@4f
    .line 634
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    const/16 v27, 0x0

    #@51
    .line 636
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    new-instance v18, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@57
    move-object/from16 v0, p0

    #@59
    iget-boolean v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@5b
    move-object/from16 v0, v18

    #@5d
    invoke-direct {v0, v6, v9}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;-><init>(Landroid/util/LocalLog;Z)V

    #@60
    .line 637
    .local v18, "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    move-object/from16 v0, p0

    #@62
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@64
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    #@67
    move-result-object v22

    #@68
    .line 639
    .local v22, "lastUserSelectedNetWorkKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6a
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@6c
    move-object/from16 v0, v22

    #@6e
    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@71
    move-result-object v23

    #@72
    .line 640
    .local v23, "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_2

    #@74
    .line 641
    new-instance v6, Ljava/lang/StringBuilder;

    #@76
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@79
    const-string/jumbo v9, "Last selection is "

    #@7c
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v6

    #@80
    move-object/from16 v0, v23

    #@82
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@84
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v6

    #@88
    const-string/jumbo v9, " Time to now: "

    #@8b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v6

    #@8f
    .line 642
    move-object/from16 v0, p0

    #@91
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@93
    invoke-virtual {v9}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@96
    move-result-wide v10

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@9b
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    #@9e
    move-result-wide v46

    #@9f
    sub-long v10, v10, v46

    #@a1
    .line 643
    const-wide/16 v46, 0x3e8

    #@a3
    .line 642
    div-long v10, v10, v46

    #@a5
    .line 643
    const-wide/16 v46, 0x3c

    #@a7
    .line 642
    div-long v10, v10, v46

    #@a9
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v6

    #@ad
    .line 643
    const-string/jumbo v9, " minutes"

    #@b0
    .line 642
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v6

    #@b4
    .line 641
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v6

    #@b8
    move-object/from16 v0, p0

    #@ba
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@bd
    .line 646
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateSavedNetworkSelectionStatus()V

    #@c0
    .line 647
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateBssidBlacklist()V

    #@c3
    .line 649
    new-instance v24, Ljava/lang/StringBuffer;

    #@c5
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    #@c8
    .line 650
    .local v24, "lowSignalScan":Ljava/lang/StringBuffer;
    new-instance v29, Ljava/lang/StringBuffer;

    #@ca
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    #@cd
    .line 651
    .local v29, "notSavedScan":Ljava/lang/StringBuffer;
    new-instance v28, Ljava/lang/StringBuffer;

    #@cf
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    #@d2
    .line 652
    .local v28, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    #@d4
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    #@d7
    .line 653
    .local v12, "scoreHistory":Ljava/lang/StringBuffer;
    new-instance v44, Ljava/util/ArrayList;

    #@d9
    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    #@dc
    .line 656
    .local v44, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    move-object/from16 v0, p0

    #@de
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@e0
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e3
    move-result-object v35

    #@e4
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v35, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    #@e7
    move-result v6

    #@e8
    if-eqz v6, :cond_1f

    #@ea
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@ed
    move-result-object v34

    #@ee
    check-cast v34, Lcom/android/server/wifi/ScanDetail;

    #@f0
    .line 657
    .local v34, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@f3
    move-result-object v7

    #@f4
    .line 659
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@f6
    if-eqz v6, :cond_4

    #@f8
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@fa
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@fd
    move-result v6

    #@fe
    if-eqz v6, :cond_6

    #@100
    .line 660
    :cond_4
    move-object/from16 v0, p0

    #@102
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@104
    if-eqz v6, :cond_3

    #@106
    .line 662
    new-instance v6, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@10d
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v6

    #@111
    const-string/jumbo v9, " / "

    #@114
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v6

    #@118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v6

    #@11c
    move-object/from16 v0, v28

    #@11e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@121
    goto :goto_0

    #@122
    .line 626
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .end local v16    # "currentHighestScore":I
    .end local v18    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .end local v22    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .end local v23    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .end local v24    # "lowSignalScan":Ljava/lang/StringBuffer;
    .end local v28    # "noValidSsid":Ljava/lang/StringBuffer;
    .end local v29    # "notSavedScan":Ljava/lang/StringBuffer;
    .end local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v35    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v44    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_5
    const-string/jumbo v6, "Quit qualified Network Selection since it is not forced and current network is qualified already"

    #@125
    move-object/from16 v0, p0

    #@127
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@12a
    .line 628
    move-object/from16 v0, v19

    #@12c
    move-object/from16 v1, p0

    #@12e
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    #@130
    .line 629
    const/4 v6, 0x0

    #@131
    return-object v6

    #@132
    .line 667
    .restart local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v12    # "scoreHistory":Ljava/lang/StringBuffer;
    .restart local v16    # "currentHighestScore":I
    .restart local v18    # "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    .restart local v22    # "lastUserSelectedNetWorkKey":Ljava/lang/String;
    .restart local v23    # "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    .restart local v24    # "lowSignalScan":Ljava/lang/StringBuffer;
    .restart local v28    # "noValidSsid":Ljava/lang/StringBuffer;
    .restart local v29    # "notSavedScan":Ljava/lang/StringBuffer;
    .restart local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .restart local v35    # "scanDetail$iterator":Ljava/util/Iterator;
    .restart local v44    # "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    :cond_6
    invoke-static {v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@135
    move-result-object v36

    #@136
    .line 669
    .local v36, "scanId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@138
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@13a
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@13c
    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->isBssidBlacklisted(Ljava/lang/String;)Z

    #@13f
    move-result v6

    #@140
    if-nez v6, :cond_7

    #@142
    .line 670
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@144
    move-object/from16 v0, p0

    #@146
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isBssidDisabled(Ljava/lang/String;)Z

    #@149
    move-result v6

    #@14a
    .line 669
    if-eqz v6, :cond_8

    #@14c
    .line 672
    :cond_7
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    #@14f
    new-instance v9, Ljava/lang/StringBuilder;

    #@151
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@154
    move-object/from16 v0, v36

    #@156
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v9

    #@15a
    const-string/jumbo v10, " is in blacklist."

    #@15d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v9

    #@161
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v9

    #@165
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@168
    goto/16 :goto_0

    #@16a
    .line 677
    :cond_8
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@16d
    move-result v6

    #@16e
    if-eqz v6, :cond_a

    #@170
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@172
    .line 678
    move-object/from16 v0, p0

    #@174
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@176
    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@178
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@17b
    move-result v9

    #@17c
    .line 677
    if-ge v6, v9, :cond_a

    #@17e
    .line 681
    :cond_9
    move-object/from16 v0, p0

    #@180
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@182
    if-eqz v6, :cond_3

    #@184
    .line 682
    new-instance v6, Ljava/lang/StringBuilder;

    #@186
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@189
    move-object/from16 v0, v36

    #@18b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v6

    #@18f
    const-string/jumbo v9, "("

    #@192
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v9

    #@196
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@199
    move-result v6

    #@19a
    if-eqz v6, :cond_e

    #@19c
    const-string/jumbo v6, "2.4GHz"

    #@19f
    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v6

    #@1a3
    .line 683
    const-string/jumbo v9, ")"

    #@1a6
    .line 682
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a9
    move-result-object v6

    #@1aa
    .line 683
    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    #@1ac
    .line 682
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v6

    #@1b0
    .line 683
    const-string/jumbo v9, " / "

    #@1b3
    .line 682
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b6
    move-result-object v6

    #@1b7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ba
    move-result-object v6

    #@1bb
    move-object/from16 v0, v24

    #@1bd
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c0
    goto/16 :goto_0

    #@1c2
    .line 679
    :cond_a
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@1c5
    move-result v6

    #@1c6
    if-eqz v6, :cond_b

    #@1c8
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@1ca
    .line 680
    move-object/from16 v0, p0

    #@1cc
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1ce
    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1d0
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1d3
    move-result v9

    #@1d4
    .line 679
    if-lt v6, v9, :cond_9

    #@1d6
    .line 689
    :cond_b
    move-object/from16 v0, p0

    #@1d8
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@1da
    if-eqz v6, :cond_c

    #@1dc
    move-object/from16 v0, p0

    #@1de
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@1e0
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    #@1e3
    move-result v6

    #@1e4
    if-eqz v6, :cond_f

    #@1e6
    .line 705
    :cond_c
    :goto_2
    const/16 v33, 0x0

    #@1e8
    .line 707
    .local v33, "potentiallyEphemeral":Z
    const/16 v32, 0x0

    #@1ea
    .line 709
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@1ec
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1ee
    .line 710
    if-nez p7, :cond_10

    #@1f0
    if-nez p5, :cond_10

    #@1f2
    move/from16 v6, p4

    #@1f4
    .line 709
    :goto_3
    move-object/from16 v0, v34

    #@1f6
    invoke-virtual {v9, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;

    #@1f9
    move-result-object v13

    #@1fa
    .line 711
    .local v13, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v13, :cond_11

    #@1fc
    .line 712
    const/16 v33, 0x1

    #@1fe
    .line 713
    move-object/from16 v0, p0

    #@200
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@202
    if-eqz v6, :cond_d

    #@204
    .line 714
    new-instance v6, Ljava/lang/StringBuilder;

    #@206
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@209
    move-object/from16 v0, v36

    #@20b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20e
    move-result-object v6

    #@20f
    const-string/jumbo v9, " / "

    #@212
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@215
    move-result-object v6

    #@216
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@219
    move-result-object v6

    #@21a
    move-object/from16 v0, v29

    #@21c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21f
    .line 727
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_d
    :goto_4
    if-eqz v33, :cond_12

    #@221
    .line 728
    if-eqz p2, :cond_3

    #@223
    .line 729
    const/4 v6, 0x0

    #@224
    move-object/from16 v0, p0

    #@226
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    #@229
    move-result-object v25

    #@22a
    .line 730
    .local v25, "netScore":Ljava/lang/Integer;
    if-eqz v25, :cond_3

    #@22c
    .line 731
    move-object/from16 v0, p0

    #@22e
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@230
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@232
    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    #@235
    move-result v6

    #@236
    if-nez v6, :cond_3

    #@238
    .line 732
    move-object/from16 v0, v18

    #@23a
    move-object/from16 v1, v25

    #@23c
    invoke-virtual {v0, v1, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V

    #@23f
    .line 734
    move-object/from16 v0, v34

    #@241
    move-object/from16 v1, v32

    #@243
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@246
    move-result-object v6

    #@247
    move-object/from16 v0, v19

    #@249
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24c
    goto/16 :goto_0

    #@24e
    .line 682
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v25    # "netScore":Ljava/lang/Integer;
    .end local v33    # "potentiallyEphemeral":Z
    :cond_e
    const-string/jumbo v6, "5GHz"

    #@251
    goto/16 :goto_1

    #@253
    .line 694
    :cond_f
    :try_start_0
    new-instance v45, Landroid/net/WifiKey;

    #@255
    new-instance v6, Ljava/lang/StringBuilder;

    #@257
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@25a
    const-string/jumbo v9, "\""

    #@25d
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@260
    move-result-object v6

    #@261
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@263
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v6

    #@267
    const-string/jumbo v9, "\""

    #@26a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26d
    move-result-object v6

    #@26e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@271
    move-result-object v6

    #@272
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@274
    move-object/from16 v0, v45

    #@276
    invoke-direct {v0, v6, v9}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@279
    .line 695
    .local v45, "wifiKey":Landroid/net/WifiKey;
    new-instance v30, Landroid/net/NetworkKey;

    #@27b
    move-object/from16 v0, v30

    #@27d
    move-object/from16 v1, v45

    #@27f
    invoke-direct {v0, v1}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    #@282
    .line 697
    .local v30, "ntwkKey":Landroid/net/NetworkKey;
    move-object/from16 v0, v44

    #@284
    move-object/from16 v1, v30

    #@286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@289
    goto/16 :goto_2

    #@28b
    .line 698
    .end local v30    # "ntwkKey":Landroid/net/NetworkKey;
    .end local v45    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v17

    #@28c
    .line 699
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    #@28f
    new-instance v9, Ljava/lang/StringBuilder;

    #@291
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@294
    const-string/jumbo v10, "Invalid SSID="

    #@297
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29a
    move-result-object v9

    #@29b
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@29d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v9

    #@2a1
    const-string/jumbo v10, " BSSID="

    #@2a4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a7
    move-result-object v9

    #@2a8
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@2aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v9

    #@2ae
    .line 700
    const-string/jumbo v10, " for network score. Skip."

    #@2b1
    .line 699
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b4
    move-result-object v9

    #@2b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b8
    move-result-object v9

    #@2b9
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2bc
    goto/16 :goto_2

    #@2be
    .line 710
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    .restart local v33    # "potentiallyEphemeral":Z
    :cond_10
    const/4 v6, 0x1

    #@2bf
    goto/16 :goto_3

    #@2c1
    .line 716
    .restart local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_11
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@2c4
    move-result v6

    #@2c5
    const/4 v9, 0x1

    #@2c6
    if-ne v6, v9, :cond_d

    #@2c8
    .line 718
    const/4 v6, 0x0

    #@2c9
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2cc
    move-result-object v8

    #@2cd
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@2cf
    .line 719
    .local v8, "network":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@2d1
    if-eqz v6, :cond_d

    #@2d3
    .line 720
    move-object/from16 v32, v8

    #@2d5
    .line 721
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    const/16 v33, 0x1

    #@2d7
    goto/16 :goto_4

    #@2d9
    .line 744
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    const/high16 v20, -0x80000000

    #@2db
    .line 746
    .local v20, "highestScore":I
    const/4 v14, 0x0

    #@2dc
    .line 747
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    const/16 v31, 0x0

    #@2de
    .line 748
    .local v31, "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e1
    move-result-object v26

    #@2e2
    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    .end local v31    # "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    .local v26, "network$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@2e5
    move-result v6

    #@2e6
    if-eqz v6, :cond_1d

    #@2e8
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2eb
    move-result-object v8

    #@2ec
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@2ee
    .line 750
    .restart local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2f1
    move-result-object v39

    #@2f2
    .line 751
    .local v39, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v6, 0x1

    #@2f3
    move-object/from16 v0, v39

    #@2f5
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    #@2f8
    .line 752
    if-nez v31, :cond_14

    #@2fa
    .line 753
    move-object/from16 v31, v8

    #@2fc
    .line 755
    :cond_14
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@2ff
    move-result v6

    #@300
    if-eqz v6, :cond_13

    #@302
    .line 757
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@304
    if-eqz v6, :cond_15

    #@306
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@308
    const-string/jumbo v9, "any"

    #@30b
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30e
    move-result v6

    #@30f
    if-eqz v6, :cond_16

    #@311
    .line 768
    :cond_15
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@313
    if-eqz v6, :cond_17

    #@315
    .line 769
    const/4 v6, 0x0

    #@316
    move-object/from16 v0, p0

    #@318
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    #@31b
    move-result-object v25

    #@31c
    .line 770
    .restart local v25    # "netScore":Ljava/lang/Integer;
    move-object/from16 v0, v18

    #@31e
    move-object/from16 v1, v25

    #@320
    invoke-virtual {v0, v1, v8, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V

    #@323
    goto :goto_5

    #@324
    .line 758
    .end local v25    # "netScore":Ljava/lang/Integer;
    :cond_16
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@326
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@328
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@32b
    move-result v6

    #@32c
    if-nez v6, :cond_15

    #@32e
    .line 761
    new-instance v6, Ljava/lang/StringBuilder;

    #@330
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@333
    const-string/jumbo v9, "Network: "

    #@336
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@339
    move-result-object v6

    #@33a
    move-object/from16 v0, p0

    #@33c
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@33f
    move-result-object v9

    #@340
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@343
    move-result-object v6

    #@344
    const-string/jumbo v9, " has specified"

    #@347
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34a
    move-result-object v6

    #@34b
    const-string/jumbo v9, "BSSID:"

    #@34e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v6

    #@352
    .line 762
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@354
    .line 761
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    move-result-object v6

    #@358
    .line 762
    const-string/jumbo v9, ". Skip "

    #@35b
    .line 761
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    move-result-object v6

    #@35f
    .line 762
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@361
    .line 761
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v6

    #@365
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@368
    move-result-object v6

    #@369
    move-object/from16 v0, p0

    #@36b
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@36e
    goto/16 :goto_5

    #@370
    .line 774
    :cond_17
    move-object/from16 v0, p0

    #@372
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@374
    .line 775
    move-object/from16 v0, p0

    #@376
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@378
    if-nez v6, :cond_1b

    #@37a
    const/4 v10, 0x0

    #@37b
    .line 776
    :goto_6
    if-nez v23, :cond_1c

    #@37d
    :cond_18
    const/4 v11, 0x0

    #@37e
    :goto_7
    move-object/from16 v6, p0

    #@380
    .line 774
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I

    #@383
    move-result v38

    #@384
    .line 778
    .local v38, "score":I
    move/from16 v0, v38

    #@386
    move/from16 v1, v20

    #@388
    if-le v0, v1, :cond_19

    #@38a
    .line 779
    move/from16 v20, v38

    #@38c
    .line 780
    move-object v14, v8

    #@38d
    .line 781
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v31, v8

    #@38f
    .line 784
    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    :cond_19
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    #@392
    move-result v6

    #@393
    move/from16 v0, v38

    #@395
    if-gt v0, v6, :cond_1a

    #@397
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    #@39a
    move-result v6

    #@39b
    move/from16 v0, v38

    #@39d
    if-ne v0, v6, :cond_13

    #@39f
    .line 785
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@3a2
    move-result-object v6

    #@3a3
    if-eqz v6, :cond_13

    #@3a5
    .line 786
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@3a7
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@3aa
    move-result-object v9

    #@3ab
    iget v9, v9, Landroid/net/wifi/ScanResult;->level:I

    #@3ad
    if-le v6, v9, :cond_13

    #@3af
    .line 787
    :cond_1a
    move-object/from16 v0, v39

    #@3b1
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@3b4
    .line 788
    move-object/from16 v0, v39

    #@3b6
    move/from16 v1, v38

    #@3b8
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    #@3bb
    goto/16 :goto_5

    #@3bd
    .line 775
    .end local v38    # "score":I
    :cond_1b
    move-object/from16 v0, p0

    #@3bf
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@3c1
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@3c3
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c6
    move-result v10

    #@3c7
    goto :goto_6

    #@3c8
    .line 776
    :cond_1c
    move-object/from16 v0, v23

    #@3ca
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3cc
    .line 777
    iget v11, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3ce
    .line 776
    if-ne v6, v11, :cond_18

    #@3d0
    const/4 v11, 0x1

    #@3d1
    goto :goto_7

    #@3d2
    .line 792
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v39    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_1d
    move-object/from16 v0, v34

    #@3d4
    move-object/from16 v1, v31

    #@3d6
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3d9
    move-result-object v6

    #@3da
    move-object/from16 v0, v19

    #@3dc
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3df
    .line 794
    move/from16 v0, v20

    #@3e1
    move/from16 v1, v16

    #@3e3
    if-gt v0, v1, :cond_1e

    #@3e5
    move/from16 v0, v20

    #@3e7
    move/from16 v1, v16

    #@3e9
    if-ne v0, v1, :cond_3

    #@3eb
    .line 795
    if-eqz v37, :cond_3

    #@3ed
    .line 796
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@3ef
    move-object/from16 v0, v37

    #@3f1
    iget v9, v0, Landroid/net/wifi/ScanResult;->level:I

    #@3f3
    if-le v6, v9, :cond_3

    #@3f5
    .line 797
    :cond_1e
    move/from16 v16, v20

    #@3f7
    .line 798
    move-object/from16 v37, v7

    #@3f9
    .line 799
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v14

    #@3fb
    .line 800
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3fe
    move-result-object v6

    #@3ff
    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@402
    goto/16 :goto_0

    #@404
    .line 804
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v20    # "highestScore":I
    .end local v26    # "network$iterator":Ljava/util/Iterator;
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v33    # "potentiallyEphemeral":Z
    .end local v34    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v36    # "scanId":Ljava/lang/String;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    :cond_1f
    move-object/from16 v0, v19

    #@406
    move-object/from16 v1, p0

    #@408
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    #@40a
    .line 807
    move-object/from16 v0, p0

    #@40c
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@40e
    if-eqz v6, :cond_20

    #@410
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    #@413
    move-result v6

    #@414
    if-eqz v6, :cond_20

    #@416
    .line 809
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    #@419
    move-result v6

    #@41a
    new-array v6, v6, [Landroid/net/NetworkKey;

    #@41c
    move-object/from16 v0, v44

    #@41e
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@421
    move-result-object v43

    #@422
    check-cast v43, [Landroid/net/NetworkKey;

    #@424
    .line 810
    .local v43, "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    #@426
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@428
    move-object/from16 v0, v43

    #@42a
    invoke-virtual {v6, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    #@42d
    .line 813
    .end local v43    # "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    :cond_20
    move-object/from16 v0, p0

    #@42f
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@431
    if-eqz v6, :cond_21

    #@433
    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    #@435
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@438
    move-object/from16 v0, v24

    #@43a
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43d
    move-result-object v6

    #@43e
    const-string/jumbo v9, " skipped due to low signal\n"

    #@441
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@444
    move-result-object v6

    #@445
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@448
    move-result-object v6

    #@449
    move-object/from16 v0, p0

    #@44b
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@44e
    .line 815
    new-instance v6, Ljava/lang/StringBuilder;

    #@450
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@453
    move-object/from16 v0, v29

    #@455
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@458
    move-result-object v6

    #@459
    const-string/jumbo v9, " skipped due to not saved\n "

    #@45c
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45f
    move-result-object v6

    #@460
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@463
    move-result-object v6

    #@464
    move-object/from16 v0, p0

    #@466
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@469
    .line 816
    new-instance v6, Ljava/lang/StringBuilder;

    #@46b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@46e
    move-object/from16 v0, v28

    #@470
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@473
    move-result-object v6

    #@474
    const-string/jumbo v9, " skipped due to not valid SSID\n"

    #@477
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47a
    move-result-object v6

    #@47b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@47e
    move-result-object v6

    #@47f
    move-object/from16 v0, p0

    #@481
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@484
    .line 817
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@487
    move-result-object v6

    #@488
    move-object/from16 v0, p0

    #@48a
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@48d
    .line 821
    :cond_21
    if-eqz v37, :cond_25

    #@48f
    .line 822
    move-object/from16 v41, v27

    #@491
    .line 824
    .local v41, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_22
    :goto_8
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@494
    move-result-object v6

    #@495
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@498
    move-result-object v6

    #@499
    if-eqz v6, :cond_24

    #@49b
    .line 825
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@49e
    move-result-object v6

    #@49f
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@4a2
    move-result-object v21

    #@4a3
    .line 826
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@4a5
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@4a7
    move-object/from16 v0, v21

    #@4a9
    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@4ac
    move-result-object v41

    #@4ad
    .line 828
    if-eqz v41, :cond_23

    #@4af
    .line 830
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@4b2
    move-result-object v42

    #@4b3
    .line 831
    .local v42, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@4b6
    move-result-object v6

    #@4b7
    if-eqz v6, :cond_22

    #@4b9
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@4bc
    move-result v6

    #@4bd
    if-eqz v6, :cond_22

    #@4bf
    .line 832
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@4c2
    move-result-object v37

    #@4c3
    .line 833
    .restart local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v41

    #@4c5
    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_8

    #@4c6
    .line 837
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .end local v42    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    #@4c8
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4cb
    const-string/jumbo v9, "Connect choice: "

    #@4ce
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d1
    move-result-object v6

    #@4d2
    move-object/from16 v0, v21

    #@4d4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d7
    move-result-object v6

    #@4d8
    const-string/jumbo v9, " has no corresponding saved config"

    #@4db
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4de
    move-result-object v6

    #@4df
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e2
    move-result-object v6

    #@4e3
    move-object/from16 v0, p0

    #@4e5
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@4e8
    .line 841
    .end local v21    # "key":Ljava/lang/String;
    :cond_24
    new-instance v6, Ljava/lang/StringBuilder;

    #@4ea
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4ed
    const-string/jumbo v9, "After user choice adjust, the final candidate is:"

    #@4f0
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f3
    move-result-object v6

    #@4f4
    .line 842
    move-object/from16 v0, p0

    #@4f6
    move-object/from16 v1, v27

    #@4f8
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@4fb
    move-result-object v9

    #@4fc
    .line 841
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ff
    move-result-object v6

    #@500
    .line 842
    const-string/jumbo v9, " : "

    #@503
    .line 841
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@506
    move-result-object v6

    #@507
    .line 842
    move-object/from16 v0, v37

    #@509
    iget-object v9, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@50b
    .line 841
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    move-result-object v6

    #@50f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@512
    move-result-object v6

    #@513
    move-object/from16 v0, p0

    #@515
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@518
    .line 847
    .end local v41    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_25
    if-nez v37, :cond_26

    #@51a
    .line 848
    const-string/jumbo v6, "Checking the externalScoreEvaluator for candidates..."

    #@51d
    move-object/from16 v0, p0

    #@51f
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@522
    .line 849
    move-object/from16 v0, p0

    #@524
    move-object/from16 v1, v18

    #@526
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;

    #@529
    move-result-object v27

    #@52a
    .line 850
    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    if-eqz v27, :cond_26

    #@52c
    .line 851
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@52f
    move-result-object v6

    #@530
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@533
    move-result-object v37

    #@534
    .line 855
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_26
    if-nez v37, :cond_27

    #@536
    .line 856
    const-string/jumbo v6, "Can not find any suitable candidates"

    #@539
    move-object/from16 v0, p0

    #@53b
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@53e
    .line 857
    const/4 v6, 0x0

    #@53f
    return-object v6

    #@540
    .line 860
    :cond_27
    move-object/from16 v0, p0

    #@542
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@544
    if-nez v6, :cond_29

    #@546
    const-string/jumbo v15, "Disconnected"

    #@549
    .line 862
    .local v15, "currentAssociationId":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    #@54b
    move-object/from16 v1, v27

    #@54d
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@550
    move-result-object v40

    #@551
    .line 865
    .local v40, "targetAssociationId":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@554
    move-result v6

    #@555
    if-eqz v6, :cond_28

    #@557
    .line 867
    new-instance v6, Ljava/lang/StringBuilder;

    #@559
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@55c
    const-string/jumbo v9, "\""

    #@55f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@562
    move-result-object v6

    #@563
    move-object/from16 v0, v37

    #@565
    iget-object v9, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@567
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56a
    move-result-object v6

    #@56b
    const-string/jumbo v9, "\""

    #@56e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@571
    move-result-object v6

    #@572
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@575
    move-result-object v6

    #@576
    move-object/from16 v0, v27

    #@578
    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@57a
    .line 871
    :cond_28
    move-object/from16 v0, v37

    #@57c
    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@57e
    move-object/from16 v0, p0

    #@580
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@582
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@585
    move-result v6

    #@586
    if-eqz v6, :cond_2a

    #@588
    .line 872
    new-instance v6, Ljava/lang/StringBuilder;

    #@58a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@58d
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@590
    move-result-object v6

    #@591
    const-string/jumbo v9, " is already the best choice!"

    #@594
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@597
    move-result-object v6

    #@598
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59b
    move-result-object v6

    #@59c
    move-object/from16 v0, p0

    #@59e
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@5a1
    .line 881
    :goto_a
    move-object/from16 v0, v37

    #@5a3
    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@5a5
    move-object/from16 v0, p0

    #@5a7
    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@5a9
    .line 882
    move-object/from16 v0, v27

    #@5ab
    move-object/from16 v1, p0

    #@5ad
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5af
    .line 883
    move-object/from16 v0, p0

    #@5b1
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@5b3
    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@5b6
    move-result-wide v10

    #@5b7
    move-object/from16 v0, p0

    #@5b9
    iput-wide v10, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    #@5bb
    .line 884
    return-object v27

    #@5bc
    .line 861
    .end local v15    # "currentAssociationId":Ljava/lang/String;
    .end local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    #@5be
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5c0
    move-object/from16 v0, p0

    #@5c2
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@5c5
    move-result-object v15

    #@5c6
    .restart local v15    # "currentAssociationId":Ljava/lang/String;
    goto :goto_9

    #@5c7
    .line 873
    .restart local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    #@5c9
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5cb
    if-eqz v6, :cond_2c

    #@5cd
    .line 874
    move-object/from16 v0, p0

    #@5cf
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5d1
    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5d3
    move-object/from16 v0, v27

    #@5d5
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5d7
    if-eq v6, v9, :cond_2b

    #@5d9
    .line 875
    move-object/from16 v0, p0

    #@5db
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5dd
    move-object/from16 v0, v27

    #@5df
    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@5e2
    move-result v6

    #@5e3
    .line 873
    if-eqz v6, :cond_2c

    #@5e5
    .line 876
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e7
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5ea
    const-string/jumbo v9, "Roaming from "

    #@5ed
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f0
    move-result-object v6

    #@5f1
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f4
    move-result-object v6

    #@5f5
    const-string/jumbo v9, " to "

    #@5f8
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fb
    move-result-object v6

    #@5fc
    move-object/from16 v0, v40

    #@5fe
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@601
    move-result-object v6

    #@602
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@605
    move-result-object v6

    #@606
    move-object/from16 v0, p0

    #@608
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@60b
    goto :goto_a

    #@60c
    .line 878
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@60e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@611
    const-string/jumbo v9, "reconnect from "

    #@614
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@617
    move-result-object v6

    #@618
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61b
    move-result-object v6

    #@61c
    const-string/jumbo v9, " to "

    #@61f
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@622
    move-result-object v6

    #@623
    move-object/from16 v0, v40

    #@625
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@628
    move-result-object v6

    #@629
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62c
    move-result-object v6

    #@62d
    move-object/from16 v0, p0

    #@62f
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@632
    goto/16 :goto_a
.end method

.method public setUserPreferredBand(I)V
    .locals 0
    .param p1, "band"    # I

    #@0
    .prologue
    .line 160
    iput p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@2
    .line 159
    return-void
.end method

.method setWifiNetworkScoreCache(Lcom/android/server/wifi/WifiNetworkScoreCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@0
    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@2
    .line 133
    return-void
.end method

.method public userSelectNetwork(IZ)Z
    .locals 16
    .param p1, "netId"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 462
    move-object/from16 v0, p0

    #@2
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@4
    move/from16 v0, p1

    #@6
    invoke-virtual {v12, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v10

    #@a
    .line 463
    .local v10, "selected":Landroid/net/wifi/WifiConfiguration;
    new-instance v12, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v13, "userSelectNetwork:"

    #@12
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v12

    #@16
    move/from16 v0, p1

    #@18
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v12

    #@1c
    const-string/jumbo v13, " persist:"

    #@1f
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v12

    #@23
    move/from16 v0, p2

    #@25
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@28
    move-result-object v12

    #@29
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v12

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@32
    .line 464
    if-eqz v10, :cond_0

    #@34
    iget-object v12, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@36
    if-nez v12, :cond_1

    #@38
    .line 465
    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v13, "userSelectNetwork: Bad configuration with nid="

    #@40
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v12

    #@44
    move/from16 v0, p1

    #@46
    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v12

    #@4a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v12

    #@4e
    move-object/from16 v0, p0

    #@50
    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@53
    .line 466
    const/4 v12, 0x0

    #@54
    return v12

    #@55
    .line 470
    :cond_1
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@58
    move-result-object v12

    #@59
    invoke-virtual {v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@5c
    move-result v12

    #@5d
    if-nez v12, :cond_2

    #@5f
    .line 471
    move-object/from16 v0, p0

    #@61
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@63
    .line 472
    const/4 v13, 0x0

    #@64
    .line 471
    move/from16 v0, p1

    #@66
    invoke-virtual {v12, v0, v13}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@69
    .line 475
    :cond_2
    if-nez p2, :cond_3

    #@6b
    .line 476
    const-string/jumbo v12, "User has no privilege to overwrite the current priority"

    #@6e
    move-object/from16 v0, p0

    #@70
    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@73
    .line 477
    const/4 v12, 0x0

    #@74
    return v12

    #@75
    .line 480
    :cond_3
    const/4 v2, 0x0

    #@76
    .line 481
    .local v2, "change":Z
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 483
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7c
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@7e
    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@81
    move-result-wide v4

    #@82
    .line 484
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    #@84
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@86
    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@89
    move-result-object v9

    #@8a
    .line 486
    .local v9, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8d
    move-result-object v8

    #@8e
    .local v8, "network$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@91
    move-result v12

    #@92
    if-eqz v12, :cond_7

    #@94
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@97
    move-result-object v7

    #@98
    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    #@9a
    .line 487
    .local v7, "network":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@9c
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@9e
    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@a0
    invoke-virtual {v12, v13}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@a3
    move-result-object v3

    #@a4
    .line 488
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@a7
    move-result-object v11

    #@a8
    .line 489
    .local v11, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@aa
    iget v13, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ac
    if-ne v12, v13, :cond_5

    #@ae
    .line 490
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@b1
    move-result-object v12

    #@b2
    if-eqz v12, :cond_4

    #@b4
    .line 491
    new-instance v12, Ljava/lang/StringBuilder;

    #@b6
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@b9
    const-string/jumbo v13, "Remove user selection preference of "

    #@bc
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v12

    #@c0
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@c3
    move-result-object v13

    #@c4
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v12

    #@c8
    .line 492
    const-string/jumbo v13, " Set Time: "

    #@cb
    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v12

    #@cf
    .line 492
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    #@d2
    move-result-wide v14

    #@d3
    .line 491
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v12

    #@d7
    .line 492
    const-string/jumbo v13, " from "

    #@da
    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v12

    #@de
    .line 493
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e0
    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v12

    #@e4
    .line 493
    const-string/jumbo v13, " : "

    #@e7
    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v12

    #@eb
    .line 493
    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ed
    .line 491
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v12

    #@f1
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v12

    #@f5
    move-object/from16 v0, p0

    #@f7
    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@fa
    .line 494
    const/4 v12, 0x0

    #@fb
    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@fe
    .line 495
    const-wide/16 v12, -0x1

    #@100
    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@103
    .line 497
    const/4 v2, 0x1

    #@104
    goto :goto_0

    #@105
    .line 502
    :cond_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    #@108
    move-result v12

    #@109
    if-eqz v12, :cond_4

    #@10b
    .line 503
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@10e
    move-result-object v12

    #@10f
    if-eqz v12, :cond_6

    #@111
    .line 504
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@114
    move-result-object v12

    #@115
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@118
    move-result v12

    #@119
    if-nez v12, :cond_4

    #@11b
    .line 505
    :cond_6
    new-instance v12, Ljava/lang/StringBuilder;

    #@11d
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    #@120
    const-string/jumbo v13, "Add key:"

    #@123
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v12

    #@127
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    move-result-object v12

    #@12b
    const-string/jumbo v13, " Set Time: "

    #@12e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@131
    move-result-object v12

    #@132
    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@135
    move-result-object v12

    #@136
    const-string/jumbo v13, " to "

    #@139
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13c
    move-result-object v12

    #@13d
    .line 506
    move-object/from16 v0, p0

    #@13f
    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@142
    move-result-object v13

    #@143
    .line 505
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v12

    #@147
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14a
    move-result-object v12

    #@14b
    move-object/from16 v0, p0

    #@14d
    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@150
    .line 507
    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@153
    .line 508
    invoke-virtual {v11, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@156
    .line 509
    const/4 v2, 0x1

    #@157
    goto/16 :goto_0

    #@159
    .line 513
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    if-eqz v2, :cond_8

    #@15b
    .line 514
    move-object/from16 v0, p0

    #@15d
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@15f
    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@162
    .line 515
    const/4 v12, 0x1

    #@163
    return v12

    #@164
    .line 518
    :cond_8
    const/4 v12, 0x0

    #@165
    return v12
.end method
