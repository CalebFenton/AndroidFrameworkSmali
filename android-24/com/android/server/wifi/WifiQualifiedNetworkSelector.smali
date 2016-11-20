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
    .line 164
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
    .line 102
    new-instance v0, Landroid/util/LocalLog;

    #@15
    const/16 v1, 0x400

    #@17
    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    #@1a
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@1c
    .line 103
    const/4 v0, 0x4

    #@1d
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@1f
    .line 104
    const/16 v0, 0x55

    #@21
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    #@23
    .line 105
    const/16 v0, 0x18

    #@25
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@27
    .line 106
    const/16 v0, 0x1e0

    #@29
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    #@2b
    .line 107
    const/16 v0, 0x28

    #@2d
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@2f
    .line 108
    const/16 v0, 0x50

    #@31
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@33
    .line 109
    const/4 v0, 0x0

    #@34
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@36
    .line 111
    new-instance v0, Ljava/util/HashMap;

    #@38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@3b
    .line 110
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@3d
    .line 166
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3f
    .line 167
    iput-object p3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@41
    .line 168
    iput-object p4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@43
    .line 170
    const-string/jumbo v0, "network_score"

    #@46
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@49
    move-result-object v0

    #@4a
    check-cast v0, Landroid/net/NetworkScoreManager;

    #@4c
    .line 169
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@4e
    .line 171
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@50
    if-eqz v0, :cond_0

    #@52
    .line 172
    new-instance v0, Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@54
    invoke-direct {v0, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;-><init>(Landroid/content/Context;)V

    #@57
    iput-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@59
    .line 173
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@5b
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@5d
    invoke-virtual {v0, v3, v1}, Landroid/net/NetworkScoreManager;->registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V

    #@60
    .line 180
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@63
    move-result-object v0

    #@64
    .line 181
    const v1, 0x10e0017

    #@67
    .line 180
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@6a
    move-result v0

    #@6b
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@6d
    .line 182
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@70
    move-result-object v0

    #@71
    .line 183
    const v1, 0x10e0016

    #@74
    .line 182
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@77
    move-result v0

    #@78
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreOffset:I

    #@7a
    .line 184
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@7d
    move-result-object v0

    #@7e
    .line 185
    const v1, 0x10e0018

    #@81
    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@84
    move-result v0

    #@85
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@87
    .line 186
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@8a
    move-result-object v0

    #@8b
    .line 187
    const v1, 0x10e0019

    #@8e
    .line 186
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@91
    move-result v0

    #@92
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastSelectionAward:I

    #@94
    .line 188
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@97
    move-result-object v0

    #@98
    .line 189
    const v1, 0x10e001a

    #@9b
    .line 188
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@9e
    move-result v0

    #@9f
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@a1
    .line 190
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a4
    move-result-object v0

    #@a5
    .line 191
    const v1, 0x10e001b

    #@a8
    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@ab
    move-result v0

    #@ac
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@ae
    .line 192
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
    .line 193
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mRssiScoreSlope:I

    #@bb
    .line 192
    mul-int/2addr v0, v1

    #@bc
    .line 193
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@be
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c3
    move-result v1

    #@c4
    .line 192
    add-int/2addr v0, v1

    #@c5
    .line 194
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@c7
    iget-object v1, v1, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@c9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@cc
    move-result v1

    #@cd
    .line 192
    add-int/2addr v0, v1

    #@ce
    .line 194
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@d0
    .line 192
    add-int/2addr v0, v1

    #@d1
    .line 194
    iget v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@d3
    .line 192
    add-int/2addr v0, v1

    #@d4
    iput v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    #@d6
    .line 165
    return-void

    #@d7
    .line 175
    :cond_0
    const-string/jumbo v0, "No network score service: Couldn\'t register as a WiFi score Manager, type=1 service= network_score"

    #@da
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@dd
    .line 177
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
    .line 202
    if-nez p1, :cond_0

    #@3
    .line 203
    return-object v0

    #@4
    .line 206
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
    .line 219
    if-nez p1, :cond_0

    #@3
    .line 220
    const-string/jumbo v1, "Disconnected"

    #@6
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@9
    .line 221
    return v3

    #@a
    .line 223
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
    .line 224
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    .line 223
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
    .line 229
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@32
    if-eqz v1, :cond_1

    #@34
    .line 230
    const-string/jumbo v1, "Current is ephemeral. Start reselect"

    #@37
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@3a
    .line 231
    return v3

    #@3b
    .line 235
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3d
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@40
    move-result v1

    #@41
    if-eqz v1, :cond_2

    #@43
    .line 236
    const-string/jumbo v1, "Current network is open network"

    #@46
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@49
    .line 237
    return v3

    #@4a
    .line 241
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
    .line 242
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
    .line 243
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
    .line 242
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v1

    #@72
    .line 244
    const-string/jumbo v2, "UserPreference band = "

    #@75
    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v1

    #@79
    .line 244
    iget v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@7b
    .line 242
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
    .line 245
    return v3

    #@87
    .line 244
    :cond_3
    const-string/jumbo v1, "5GHz band"

    #@8a
    goto :goto_0

    #@8b
    .line 248
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@8d
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@90
    move-result v0

    #@91
    .line 249
    .local v0, "currentRssi":I
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@93
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@96
    move-result v1

    #@97
    if-eqz v1, :cond_6

    #@99
    .line 250
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
    .line 253
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
    .line 254
    const-string/jumbo v2, "current RSSI is: "

    #@c1
    .line 253
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
    .line 255
    return v3

    #@d1
    .line 251
    :cond_6
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@d3
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@d6
    move-result v1

    #@d7
    if-eqz v1, :cond_7

    #@d9
    .line 252
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
    .line 258
    :cond_7
    const/4 v1, 0x1

    #@e4
    return v1

    #@e5
    .line 253
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
    .line 124
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 125
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 123
    :cond_0
    return-void
.end method

.method private localLoge(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    #@0
    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@2
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@5
    .line 129
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
    .line 277
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    .line 278
    const-string/jumbo v1, "empty scan result"

    #@e
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@11
    .line 279
    return v8

    #@12
    .line 283
    :cond_0
    if-eqz p1, :cond_1

    #@14
    .line 284
    const-string/jumbo v1, "Need not Qualified Network Selection during L2 debouncing"

    #@17
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@1a
    .line 285
    return v8

    #@1b
    .line 288
    :cond_1
    if-eqz p2, :cond_6

    #@1d
    .line 292
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1f
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigManager;->getEnableAutoJoinWhenAssociated()Z

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_2

    #@25
    .line 293
    const-string/jumbo v1, "Switch network under connection is not allowed"

    #@28
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@2b
    .line 294
    return v8

    #@2c
    .line 299
    :cond_2
    iget-wide v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    #@2e
    const-wide/16 v6, -0x1

    #@30
    cmp-long v1, v4, v6

    #@32
    if-eqz v1, :cond_3

    #@34
    .line 300
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
    .line 301
    .local v2, "gap":J
    const-wide/16 v4, 0x2710

    #@40
    cmp-long v1, v2, v4

    #@42
    if-gez v1, :cond_3

    #@44
    .line 302
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
    .line 303
    const-string/jumbo v4, " ms!"

    #@57
    .line 302
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
    .line 304
    return v8

    #@63
    .line 309
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
    .line 310
    .local v0, "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_4

    #@71
    .line 314
    return v8

    #@72
    .line 317
    :cond_4
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@74
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isNetworkQualified(Landroid/net/wifi/WifiConfiguration;)Z

    #@77
    move-result v1

    #@78
    if-nez v1, :cond_5

    #@7a
    .line 319
    const-string/jumbo v1, "Current network is not qualified"

    #@7d
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@80
    .line 320
    return v9

    #@81
    .line 322
    :cond_5
    return v8

    #@82
    .line 324
    .end local v0    # "currentNetwork":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    if-eqz p3, :cond_7

    #@84
    .line 325
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@86
    .line 326
    iput-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@88
    .line 328
    if-eqz p4, :cond_8

    #@8a
    .line 329
    return v8

    #@8b
    .line 333
    :cond_7
    const-string/jumbo v1, "WifiStateMachine is not on connected or disconnected state"

    #@8e
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@91
    .line 334
    return v8

    #@92
    .line 337
    :cond_8
    return v9
.end method

.method private static toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 958
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "NULL"

    #@5
    :goto_0
    return-object v0

    #@6
    .line 959
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
    .line 563
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
    .line 564
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 565
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@16
    .line 566
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-eqz v1, :cond_0

    #@18
    iget-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 567
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
    .line 568
    const-wide/32 v4, 0x493e0

    #@28
    .line 567
    cmp-long v2, v2, v4

    #@2a
    if-ltz v2, :cond_0

    #@2c
    .line 569
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    #@2f
    goto :goto_0

    #@30
    .line 562
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
    .line 409
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@3
    invoke-virtual {v7}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@6
    move-result-object v4

    #@7
    .line 410
    .local v4, "savedNetworks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    #@a
    move-result v7

    #@b
    if-nez v7, :cond_0

    #@d
    .line 411
    const-string/jumbo v7, "no saved network"

    #@10
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@13
    .line 412
    return-void

    #@14
    .line 415
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    #@16
    const-string/jumbo v7, "Saved Network List\n"

    #@19
    invoke-direct {v5, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@1c
    .line 416
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
    .line 417
    .local v2, "network":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2e
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@30
    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@33
    move-result-object v0

    #@34
    .line 419
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@37
    move-result-object v6

    #@38
    .line 422
    .local v6, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    #@3b
    move-result v7

    #@3c
    if-eqz v7, :cond_1

    #@3e
    .line 423
    iget-object v7, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@40
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@42
    invoke-virtual {v7, v8}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(I)Z

    #@45
    .line 427
    :cond_1
    const/4 v7, 0x0

    #@46
    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@49
    .line 428
    const/high16 v7, -0x80000000

    #@4b
    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    #@4e
    .line 429
    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    #@51
    .line 432
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
    .line 433
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@75
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v7

    #@79
    .line 433
    const-string/jumbo v8, " FQDN:"

    #@7c
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    .line 433
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@82
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v7

    #@86
    .line 433
    const-string/jumbo v8, " "

    #@89
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v7

    #@8d
    .line 434
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@90
    move-result-object v8

    #@91
    .line 432
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v7

    #@95
    .line 434
    const-string/jumbo v8, " Disable account: "

    #@98
    .line 432
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
    .line 435
    const/4 v1, 0x0

    #@a4
    .line 436
    .local v1, "index":I
    :goto_1
    const/16 v7, 0xa

    #@a6
    .line 435
    if-ge v1, v7, :cond_2

    #@a8
    .line 437
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
    .line 436
    add-int/lit8 v1, v1, 0x1

    #@c5
    goto :goto_1

    #@c6
    .line 439
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
    .line 440
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    #@e4
    move-result-wide v8

    #@e5
    .line 439
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
    .line 441
    const-string/jumbo v7, "\n"

    #@f3
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@f6
    goto/16 :goto_0

    #@f8
    .line 443
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
    .line 408
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
    .line 346
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
    .line 347
    iget v3, p1, Landroid/net/wifi/ScanResult;->level:I

    #@e
    .line 348
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
    .line 349
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
    .line 350
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@32
    move-result v5

    #@33
    if-eqz v5, :cond_0

    #@35
    .line 352
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
    .line 353
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
    .line 357
    :cond_0
    if-eqz p5, :cond_1

    #@61
    .line 358
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@63
    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@66
    move-result-wide v8

    #@67
    .line 359
    iget-object v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@69
    invoke-virtual {v5}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    #@6c
    move-result-wide v10

    #@6d
    .line 358
    sub-long v6, v8, v10

    #@6f
    .line 361
    .local v6, "timeDifference":J
    const-wide/16 v8, 0x0

    #@71
    cmp-long v5, v6, v8

    #@73
    if-lez v5, :cond_1

    #@75
    .line 362
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
    .line 363
    .local v2, "bonus":I
    if-lez v2, :cond_8

    #@83
    move v5, v2

    #@84
    :goto_1
    add-int/2addr v4, v5

    #@85
    .line 364
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
    .line 365
    const-string/jumbo v8, " minutes ago, bonus:"

    #@9f
    .line 364
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
    .line 370
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
    .line 371
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
    .line 372
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
    .line 373
    iget-object v8, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@cf
    iget-object v8, v8, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d1
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@d4
    move-result v8

    #@d5
    .line 372
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
    .line 377
    :cond_3
    if-eqz p4, :cond_4

    #@e4
    .line 378
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSameBssidAward:I

    #@e6
    add-int/2addr v4, v5

    #@e7
    .line 379
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
    .line 383
    :cond_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@105
    move-result v5

    #@106
    if-eqz v5, :cond_9

    #@108
    .line 384
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mPasspointSecurityAward:I

    #@10a
    add-int/2addr v4, v5

    #@10b
    .line 385
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
    .line 393
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
    .line 399
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
    .line 400
    iget v8, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@147
    .line 399
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v5

    #@14b
    .line 400
    const-string/jumbo v8, " final score:"

    #@14e
    .line 399
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@151
    move-result-object v5

    #@152
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@155
    move-result-object v5

    #@156
    .line 400
    const-string/jumbo v8, "\n\n"

    #@159
    .line 399
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
    .line 402
    return v4

    #@167
    .line 347
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
    .line 363
    .restart local v2    # "bonus":I
    .restart local v4    # "score":I
    .restart local v6    # "timeDifference":J
    :cond_8
    const/4 v5, 0x0

    #@172
    goto/16 :goto_1

    #@174
    .line 386
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
    .line 387
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mSecurityAward:I

    #@17e
    add-int/2addr v4, v5

    #@17f
    .line 388
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
    .line 394
    :cond_a
    iget v5, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNoIntnetPenalty:I

    #@19d
    sub-int/2addr v4, v5

    #@19e
    .line 395
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
    .line 964
    const-string/jumbo v0, "Dump of WifiQualifiedNetworkSelector"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 965
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log Begin ----"

    #@9
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@c
    .line 966
    iget-object v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@e
    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@11
    .line 967
    const-string/jumbo v0, "WifiQualifiedNetworkSelector - Log End ----"

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@17
    .line 963
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
    .line 533
    if-eqz p2, :cond_1

    #@5
    .line 534
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
    .line 536
    :cond_1
    if-eqz p1, :cond_2

    #@12
    .line 537
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@14
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@1a
    .line 538
    .local v1, "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    if-nez v1, :cond_3

    #@1c
    .line 540
    new-instance v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@1e
    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;-><init>(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;)V

    #@21
    .line 541
    .local v0, "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    iget v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@23
    add-int/lit8 v2, v2, 0x1

    #@25
    iput v2, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@27
    .line 542
    iget-object v2, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@29
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 553
    .end local v0    # "newStatus":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    .end local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_2
    return v3

    #@2d
    .line 543
    .restart local v1    # "status":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;
    :cond_3
    iget-boolean v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@2f
    if-nez v4, :cond_2

    #@31
    .line 544
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@33
    add-int/lit8 v4, v4, 0x1

    #@35
    iput v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@37
    .line 545
    iget v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mCounter:I

    #@39
    const/4 v5, 0x3

    #@3a
    if-lt v4, v5, :cond_2

    #@3c
    .line 546
    iput-boolean v2, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mIsBlacklisted:Z

    #@3e
    .line 547
    iget-object v3, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@40
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@43
    move-result-wide v4

    #@44
    iput-wide v4, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;->mBlacklistedTimeStamp:J

    #@46
    .line 548
    return v2
.end method

.method enableVerboseLogging(I)V
    .locals 1
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 198
    if-gtz p1, :cond_0

    #@3
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@5
    .line 197
    return-void
.end method

.method public getConnetionTargetNetwork()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    #@0
    .prologue
    .line 142
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
    .line 890
    const/4 v0, 0x0

    #@4
    .line 891
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getBestCandidateType()I

    #@7
    move-result v4

    #@8
    packed-switch v4, :pswitch_data_0

    #@b
    .line 931
    const-string/jumbo v4, "Unhandled ExternalScoreEvaluator case. No candidate selected."

    #@e
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@11
    .line 934
    .end local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :goto_0
    return-object v0

    #@12
    .line 894
    .restart local v0    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    #@15
    move-result-object v3

    #@16
    .line 896
    .local v3, "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@18
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@1b
    move-result-object v2

    #@1c
    .line 900
    .local v2, "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    iput-boolean v7, v2, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1e
    .line 901
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 903
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@24
    invoke-virtual {v4, v3}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getMeteredHint(Landroid/net/wifi/ScanResult;)Z

    #@27
    move-result v4

    #@28
    .line 902
    iput-boolean v4, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@2a
    .line 905
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@2c
    .line 906
    const/4 v5, -0x1

    #@2d
    .line 905
    invoke-virtual {v4, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@30
    .line 908
    const-string/jumbo v4, "new ephemeral candidate %s network ID:%d, meteredHint=%b"

    #@33
    const/4 v5, 0x3

    #@34
    new-array v5, v5, [Ljava/lang/Object;

    #@36
    .line 910
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
    .line 911
    iget-boolean v6, v2, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@46
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@49
    move-result-object v6

    #@4a
    aput-object v6, v5, v9

    #@4c
    .line 908
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@53
    .line 913
    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@56
    move-result-object v4

    #@57
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@5a
    .line 915
    move-object v0, v2

    #@5b
    .line 916
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@5c
    .line 919
    .end local v2    # "unTrustedNetworkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "untrustedScanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getScanResultCandidate()Landroid/net/wifi/ScanResult;

    #@5f
    move-result-object v1

    #@60
    .line 920
    .local v1, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    invoke-virtual {p1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->getSavedConfig()Landroid/net/wifi/WifiConfiguration;

    #@63
    move-result-object v0

    #@64
    .line 921
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@67
    move-result-object v4

    #@68
    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@6b
    .line 922
    const-string/jumbo v4, "new scored candidate %s network ID:%d"

    #@6e
    new-array v5, v9, [Ljava/lang/Object;

    #@70
    .line 923
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
    .line 922
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@85
    goto :goto_0

    #@86
    .line 927
    .end local v1    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v0, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :pswitch_2
    const-string/jumbo v4, "ExternalScoreEvaluator did not see any good candidates."

    #@89
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@8c
    goto :goto_0

    #@8d
    .line 891
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
    .line 152
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
    .line 946
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
    .line 947
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@f
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/WifiNetworkScoreCache;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)I

    #@12
    move-result v0

    #@13
    .line 948
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
    .line 949
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v1

    #@36
    return-object v1

    #@37
    .line 951
    .end local v0    # "networkScore":I
    :cond_0
    return-object v2
.end method

.method public isBssidDisabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 582
    iget-object v1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mBssidBlacklist:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$BssidBlacklistStatus;

    #@8
    .line 583
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
    .line 613
    .local p3, "scanDetails":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/ScanDetail;>;"
    const-string/jumbo v6, "==========start qualified Network Selection=========="

    #@3
    move-object/from16 v0, p0

    #@5
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@8
    .line 614
    move-object/from16 v0, p3

    #@a
    move-object/from16 v1, p0

    #@c
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@e
    .line 615
    new-instance v19, Ljava/util/ArrayList;

    #@10
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@13
    .line 616
    .local v19, "filteredScanDetails":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Lcom/android/server/wifi/ScanDetail;Landroid/net/wifi/WifiConfiguration;>;>;"
    move-object/from16 v0, p0

    #@15
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@17
    if-nez v6, :cond_0

    #@19
    .line 618
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
    .line 617
    move-object/from16 v0, p0

    #@2b
    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@2d
    .line 621
    :cond_0
    move-object/from16 v0, p0

    #@2f
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@31
    if-nez v6, :cond_1

    #@33
    .line 622
    move-object/from16 v0, p0

    #@35
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    #@37
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@3a
    move-result-object v6

    #@3b
    move-object/from16 v0, p0

    #@3d
    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@3f
    .line 625
    :cond_1
    if-nez p1, :cond_2

    #@41
    move-object/from16 v0, p0

    #@43
    move/from16 v1, p4

    #@45
    move/from16 v2, p5

    #@47
    move/from16 v3, p6

    #@49
    move/from16 v4, p7

    #@4b
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->needQualifiedNetworkSelection(ZZZZ)Z

    #@4e
    move-result v6

    #@4f
    if-eqz v6, :cond_6

    #@51
    .line 633
    :cond_2
    const/high16 v16, -0x80000000

    #@53
    .line 634
    .local v16, "currentHighestScore":I
    const/16 v37, 0x0

    #@55
    .line 635
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    const/16 v27, 0x0

    #@57
    .line 637
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    new-instance v18, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLocalLog:Landroid/util/LocalLog;

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-boolean v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@61
    move-object/from16 v0, v18

    #@63
    invoke-direct {v0, v6, v9}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;-><init>(Landroid/util/LocalLog;Z)V

    #@66
    .line 638
    .local v18, "externalScoreEvaluator":Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;
    move-object/from16 v0, p0

    #@68
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@6a
    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    #@6d
    move-result-object v22

    #@6e
    .line 640
    .local v22, "lastUserSelectedNetWorkKey":Ljava/lang/String;
    move-object/from16 v0, p0

    #@70
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@72
    move-object/from16 v0, v22

    #@74
    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@77
    move-result-object v23

    #@78
    .line 641
    .local v23, "lastUserSelectedNetwork":Landroid/net/wifi/WifiConfiguration;
    if-eqz v23, :cond_3

    #@7a
    .line 642
    new-instance v6, Ljava/lang/StringBuilder;

    #@7c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@7f
    const-string/jumbo v9, "Last selection is "

    #@82
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v6

    #@86
    move-object/from16 v0, v23

    #@88
    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@8a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v6

    #@8e
    const-string/jumbo v9, " Time to now: "

    #@91
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@94
    move-result-object v6

    #@95
    .line 643
    move-object/from16 v0, p0

    #@97
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@99
    invoke-virtual {v9}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@9c
    move-result-wide v10

    #@9d
    move-object/from16 v0, p0

    #@9f
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@a1
    invoke-virtual {v9}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedTimeStamp()J

    #@a4
    move-result-wide v46

    #@a5
    sub-long v10, v10, v46

    #@a7
    .line 644
    const-wide/16 v46, 0x3e8

    #@a9
    .line 643
    div-long v10, v10, v46

    #@ab
    .line 644
    const-wide/16 v46, 0x3c

    #@ad
    .line 643
    div-long v10, v10, v46

    #@af
    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v6

    #@b3
    .line 644
    const-string/jumbo v9, " minutes"

    #@b6
    .line 643
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v6

    #@ba
    .line 642
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    move-object/from16 v0, p0

    #@c0
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@c3
    .line 647
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateSavedNetworkSelectionStatus()V

    #@c6
    .line 648
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->updateBssidBlacklist()V

    #@c9
    .line 650
    new-instance v24, Ljava/lang/StringBuffer;

    #@cb
    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    #@ce
    .line 651
    .local v24, "lowSignalScan":Ljava/lang/StringBuffer;
    new-instance v29, Ljava/lang/StringBuffer;

    #@d0
    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuffer;-><init>()V

    #@d3
    .line 652
    .local v29, "notSavedScan":Ljava/lang/StringBuffer;
    new-instance v28, Ljava/lang/StringBuffer;

    #@d5
    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuffer;-><init>()V

    #@d8
    .line 653
    .local v28, "noValidSsid":Ljava/lang/StringBuffer;
    new-instance v12, Ljava/lang/StringBuffer;

    #@da
    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    #@dd
    .line 654
    .local v12, "scoreHistory":Ljava/lang/StringBuffer;
    new-instance v44, Ljava/util/ArrayList;

    #@df
    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    #@e2
    .line 657
    .local v44, "unscoredNetworks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkKey;>;"
    move-object/from16 v0, p0

    #@e4
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScanDetails:Ljava/util/List;

    #@e6
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e9
    move-result-object v35

    #@ea
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .local v35, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    #@ed
    move-result v6

    #@ee
    if-eqz v6, :cond_1f

    #@f0
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f3
    move-result-object v34

    #@f4
    check-cast v34, Lcom/android/server/wifi/ScanDetail;

    #@f6
    .line 658
    .local v34, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual/range {v34 .. v34}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@f9
    move-result-object v7

    #@fa
    .line 660
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@fc
    if-eqz v6, :cond_5

    #@fe
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@100
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@103
    move-result v6

    #@104
    if-eqz v6, :cond_7

    #@106
    .line 661
    :cond_5
    move-object/from16 v0, p0

    #@108
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@10a
    if-eqz v6, :cond_4

    #@10c
    .line 663
    new-instance v6, Ljava/lang/StringBuilder;

    #@10e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@111
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@113
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@116
    move-result-object v6

    #@117
    const-string/jumbo v9, " / "

    #@11a
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v6

    #@11e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v6

    #@122
    move-object/from16 v0, v28

    #@124
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@127
    goto :goto_0

    #@128
    .line 627
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
    :cond_6
    const-string/jumbo v6, "Quit qualified Network Selection since it is not forced and current network is qualified already"

    #@12b
    move-object/from16 v0, p0

    #@12d
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@130
    .line 629
    move-object/from16 v0, v19

    #@132
    move-object/from16 v1, p0

    #@134
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    #@136
    .line 630
    const/4 v6, 0x0

    #@137
    return-object v6

    #@138
    .line 668
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
    :cond_7
    invoke-static {v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->toScanId(Landroid/net/wifi/ScanResult;)Ljava/lang/String;

    #@13b
    move-result-object v36

    #@13c
    .line 670
    .local v36, "scanId":Ljava/lang/String;
    move-object/from16 v0, p0

    #@13e
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@140
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@142
    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->isBssidBlacklisted(Ljava/lang/String;)Z

    #@145
    move-result v6

    #@146
    if-nez v6, :cond_8

    #@148
    .line 671
    iget-object v6, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@14a
    move-object/from16 v0, p0

    #@14c
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->isBssidDisabled(Ljava/lang/String;)Z

    #@14f
    move-result v6

    #@150
    .line 670
    if-eqz v6, :cond_9

    #@152
    .line 673
    :cond_8
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    #@155
    new-instance v9, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    move-object/from16 v0, v36

    #@15c
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v9

    #@160
    const-string/jumbo v10, " is in blacklist."

    #@163
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v9

    #@167
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v9

    #@16b
    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@16e
    goto/16 :goto_0

    #@170
    .line 678
    :cond_9
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@173
    move-result v6

    #@174
    if-eqz v6, :cond_b

    #@176
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@178
    .line 679
    move-object/from16 v0, p0

    #@17a
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@17c
    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@17e
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@181
    move-result v9

    #@182
    .line 678
    if-ge v6, v9, :cond_b

    #@184
    .line 682
    :cond_a
    move-object/from16 v0, p0

    #@186
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@188
    if-eqz v6, :cond_4

    #@18a
    .line 683
    new-instance v6, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    move-object/from16 v0, v36

    #@191
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v6

    #@195
    const-string/jumbo v9, "("

    #@198
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v9

    #@19c
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is24GHz()Z

    #@19f
    move-result v6

    #@1a0
    if-eqz v6, :cond_f

    #@1a2
    const-string/jumbo v6, "2.4GHz"

    #@1a5
    :goto_1
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a8
    move-result-object v6

    #@1a9
    .line 684
    const-string/jumbo v9, ")"

    #@1ac
    .line 683
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1af
    move-result-object v6

    #@1b0
    .line 684
    iget v9, v7, Landroid/net/wifi/ScanResult;->level:I

    #@1b2
    .line 683
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b5
    move-result-object v6

    #@1b6
    .line 684
    const-string/jumbo v9, " / "

    #@1b9
    .line 683
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v6

    #@1bd
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c0
    move-result-object v6

    #@1c1
    move-object/from16 v0, v24

    #@1c3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c6
    goto/16 :goto_0

    #@1c8
    .line 680
    :cond_b
    invoke-virtual {v7}, Landroid/net/wifi/ScanResult;->is5GHz()Z

    #@1cb
    move-result v6

    #@1cc
    if-eqz v6, :cond_c

    #@1ce
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@1d0
    .line 681
    move-object/from16 v0, p0

    #@1d2
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1d4
    iget-object v9, v9, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1d6
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@1d9
    move-result v9

    #@1da
    .line 680
    if-lt v6, v9, :cond_a

    #@1dc
    .line 690
    :cond_c
    move-object/from16 v0, p0

    #@1de
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@1e0
    if-eqz v6, :cond_d

    #@1e2
    move-object/from16 v0, p0

    #@1e4
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@1e6
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiNetworkScoreCache;->isScoredNetwork(Landroid/net/wifi/ScanResult;)Z

    #@1e9
    move-result v6

    #@1ea
    if-eqz v6, :cond_10

    #@1ec
    .line 706
    :cond_d
    :goto_2
    const/16 v33, 0x0

    #@1ee
    .line 708
    .local v33, "potentiallyEphemeral":Z
    const/16 v32, 0x0

    #@1f0
    .line 710
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@1f2
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@1f4
    .line 711
    if-nez p7, :cond_11

    #@1f6
    if-nez p5, :cond_11

    #@1f8
    move/from16 v6, p4

    #@1fa
    .line 710
    :goto_3
    move-object/from16 v0, v34

    #@1fc
    invoke-virtual {v9, v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;

    #@1ff
    move-result-object v13

    #@200
    .line 712
    .local v13, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v13, :cond_12

    #@202
    .line 713
    const/16 v33, 0x1

    #@204
    .line 714
    move-object/from16 v0, p0

    #@206
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@208
    if-eqz v6, :cond_e

    #@20a
    .line 715
    new-instance v6, Ljava/lang/StringBuilder;

    #@20c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@20f
    move-object/from16 v0, v36

    #@211
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    move-result-object v6

    #@215
    const-string/jumbo v9, " / "

    #@218
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v6

    #@21c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21f
    move-result-object v6

    #@220
    move-object/from16 v0, v29

    #@222
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@225
    .line 728
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_e
    :goto_4
    if-eqz v33, :cond_13

    #@227
    .line 729
    if-eqz p2, :cond_4

    #@229
    .line 730
    const/4 v6, 0x0

    #@22a
    move-object/from16 v0, p0

    #@22c
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    #@22f
    move-result-object v25

    #@230
    .line 731
    .local v25, "netScore":Ljava/lang/Integer;
    if-eqz v25, :cond_4

    #@232
    .line 732
    move-object/from16 v0, p0

    #@234
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@236
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@238
    invoke-virtual {v6, v9}, Lcom/android/server/wifi/WifiConfigManager;->wasEphemeralNetworkDeleted(Ljava/lang/String;)Z

    #@23b
    move-result v6

    #@23c
    if-nez v6, :cond_4

    #@23e
    .line 733
    move-object/from16 v0, v18

    #@240
    move-object/from16 v1, v25

    #@242
    invoke-virtual {v0, v1, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalUntrustedCandidate(Ljava/lang/Integer;Landroid/net/wifi/ScanResult;)V

    #@245
    .line 735
    move-object/from16 v0, v34

    #@247
    move-object/from16 v1, v32

    #@249
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@24c
    move-result-object v6

    #@24d
    move-object/from16 v0, v19

    #@24f
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@252
    goto/16 :goto_0

    #@254
    .line 683
    .end local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v25    # "netScore":Ljava/lang/Integer;
    .end local v33    # "potentiallyEphemeral":Z
    :cond_f
    const-string/jumbo v6, "5GHz"

    #@257
    goto/16 :goto_1

    #@259
    .line 695
    :cond_10
    :try_start_0
    new-instance v45, Landroid/net/WifiKey;

    #@25b
    new-instance v6, Ljava/lang/StringBuilder;

    #@25d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@260
    const-string/jumbo v9, "\""

    #@263
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v6

    #@267
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@269
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26c
    move-result-object v6

    #@26d
    const-string/jumbo v9, "\""

    #@270
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    move-result-object v6

    #@274
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@277
    move-result-object v6

    #@278
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@27a
    move-object/from16 v0, v45

    #@27c
    invoke-direct {v0, v6, v9}, Landroid/net/WifiKey;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@27f
    .line 696
    .local v45, "wifiKey":Landroid/net/WifiKey;
    new-instance v30, Landroid/net/NetworkKey;

    #@281
    move-object/from16 v0, v30

    #@283
    move-object/from16 v1, v45

    #@285
    invoke-direct {v0, v1}, Landroid/net/NetworkKey;-><init>(Landroid/net/WifiKey;)V

    #@288
    .line 698
    .local v30, "ntwkKey":Landroid/net/NetworkKey;
    move-object/from16 v0, v44

    #@28a
    move-object/from16 v1, v30

    #@28c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@28f
    goto/16 :goto_2

    #@291
    .line 699
    .end local v30    # "ntwkKey":Landroid/net/NetworkKey;
    .end local v45    # "wifiKey":Landroid/net/WifiKey;
    :catch_0
    move-exception v17

    #@292
    .line 700
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "WifiQualifiedNetworkSelector:"

    #@295
    new-instance v9, Ljava/lang/StringBuilder;

    #@297
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@29a
    const-string/jumbo v10, "Invalid SSID="

    #@29d
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a0
    move-result-object v9

    #@2a1
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@2a3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a6
    move-result-object v9

    #@2a7
    const-string/jumbo v10, " BSSID="

    #@2aa
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ad
    move-result-object v9

    #@2ae
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@2b0
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    move-result-object v9

    #@2b4
    .line 701
    const-string/jumbo v10, " for network score. Skip."

    #@2b7
    .line 700
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    move-result-object v9

    #@2bb
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2be
    move-result-object v9

    #@2bf
    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@2c2
    goto/16 :goto_2

    #@2c4
    .line 711
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    .restart local v33    # "potentiallyEphemeral":Z
    :cond_11
    const/4 v6, 0x1

    #@2c5
    goto/16 :goto_3

    #@2c7
    .line 717
    .restart local v13    # "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_12
    invoke-interface {v13}, Ljava/util/List;->size()I

    #@2ca
    move-result v6

    #@2cb
    const/4 v9, 0x1

    #@2cc
    if-ne v6, v9, :cond_e

    #@2ce
    .line 719
    const/4 v6, 0x0

    #@2cf
    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d2
    move-result-object v8

    #@2d3
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@2d5
    .line 720
    .local v8, "network":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@2d7
    if-eqz v6, :cond_e

    #@2d9
    .line 721
    move-object/from16 v32, v8

    #@2db
    .line 722
    .local v32, "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    const/16 v33, 0x1

    #@2dd
    goto/16 :goto_4

    #@2df
    .line 745
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v32    # "potentialEphemeralCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_13
    const/high16 v20, -0x80000000

    #@2e1
    .line 747
    .local v20, "highestScore":I
    const/4 v14, 0x0

    #@2e2
    .line 748
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    const/16 v31, 0x0

    #@2e4
    .line 749
    .local v31, "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e7
    move-result-object v26

    #@2e8
    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    .end local v31    # "potentialCandidate":Landroid/net/wifi/WifiConfiguration;
    .local v26, "network$iterator":Ljava/util/Iterator;
    :cond_14
    :goto_5
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    #@2eb
    move-result v6

    #@2ec
    if-eqz v6, :cond_1d

    #@2ee
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2f1
    move-result-object v8

    #@2f2
    check-cast v8, Landroid/net/wifi/WifiConfiguration;

    #@2f4
    .line 751
    .restart local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2f7
    move-result-object v39

    #@2f8
    .line 752
    .local v39, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    const/4 v6, 0x1

    #@2f9
    move-object/from16 v0, v39

    #@2fb
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setSeenInLastQualifiedNetworkSelection(Z)V

    #@2fe
    .line 753
    if-nez v31, :cond_15

    #@300
    .line 754
    move-object/from16 v31, v8

    #@302
    .line 756
    :cond_15
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@305
    move-result v6

    #@306
    if-eqz v6, :cond_14

    #@308
    .line 758
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@30a
    if-eqz v6, :cond_16

    #@30c
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@30e
    const-string/jumbo v9, "any"

    #@311
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@314
    move-result v6

    #@315
    if-eqz v6, :cond_17

    #@317
    .line 769
    :cond_16
    iget-boolean v6, v8, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@319
    if-eqz v6, :cond_18

    #@31b
    .line 770
    const/4 v6, 0x0

    #@31c
    move-object/from16 v0, p0

    #@31e
    invoke-virtual {v0, v7, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkScore(Landroid/net/wifi/ScanResult;Z)Ljava/lang/Integer;

    #@321
    move-result-object v25

    #@322
    .line 771
    .restart local v25    # "netScore":Ljava/lang/Integer;
    move-object/from16 v0, v18

    #@324
    move-object/from16 v1, v25

    #@326
    invoke-virtual {v0, v1, v8, v7}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;->evalSavedCandidate(Ljava/lang/Integer;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)V

    #@329
    goto :goto_5

    #@32a
    .line 759
    .end local v25    # "netScore":Ljava/lang/Integer;
    :cond_17
    iget-object v6, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@32c
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@32e
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@331
    move-result v6

    #@332
    if-nez v6, :cond_16

    #@334
    .line 762
    new-instance v6, Ljava/lang/StringBuilder;

    #@336
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@339
    const-string/jumbo v9, "Network: "

    #@33c
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33f
    move-result-object v6

    #@340
    move-object/from16 v0, p0

    #@342
    invoke-direct {v0, v8}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@345
    move-result-object v9

    #@346
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@349
    move-result-object v6

    #@34a
    const-string/jumbo v9, " has specified"

    #@34d
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@350
    move-result-object v6

    #@351
    const-string/jumbo v9, "BSSID:"

    #@354
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@357
    move-result-object v6

    #@358
    .line 763
    iget-object v9, v8, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@35a
    .line 762
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35d
    move-result-object v6

    #@35e
    .line 763
    const-string/jumbo v9, ". Skip "

    #@361
    .line 762
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@364
    move-result-object v6

    #@365
    .line 763
    iget-object v9, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@367
    .line 762
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36a
    move-result-object v6

    #@36b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36e
    move-result-object v6

    #@36f
    move-object/from16 v0, p0

    #@371
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@374
    goto/16 :goto_5

    #@376
    .line 775
    :cond_18
    move-object/from16 v0, p0

    #@378
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@37a
    .line 776
    move-object/from16 v0, p0

    #@37c
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@37e
    if-nez v6, :cond_1b

    #@380
    const/4 v10, 0x0

    #@381
    .line 777
    :goto_6
    if-nez v23, :cond_1c

    #@383
    :cond_19
    const/4 v11, 0x0

    #@384
    :goto_7
    move-object/from16 v6, p0

    #@386
    .line 775
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->calculateBssidScore(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZLjava/lang/StringBuffer;)I

    #@389
    move-result v38

    #@38a
    .line 779
    .local v38, "score":I
    move/from16 v0, v38

    #@38c
    move/from16 v1, v20

    #@38e
    if-le v0, v1, :cond_1a

    #@390
    .line 780
    move/from16 v20, v38

    #@392
    .line 781
    move-object v14, v8

    #@393
    .line 782
    .local v14, "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v31, v8

    #@395
    .line 785
    .end local v14    # "configurationCandidateForThisScan":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    invoke-virtual/range {v39 .. v39}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateScore()I

    #@398
    move-result v6

    #@399
    move/from16 v0, v38

    #@39b
    if-le v0, v6, :cond_14

    #@39d
    .line 786
    move-object/from16 v0, v39

    #@39f
    invoke-virtual {v0, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidate(Landroid/net/wifi/ScanResult;)V

    #@3a2
    .line 787
    move-object/from16 v0, v39

    #@3a4
    move/from16 v1, v38

    #@3a6
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setCandidateScore(I)V

    #@3a9
    goto/16 :goto_5

    #@3ab
    .line 776
    .end local v38    # "score":I
    :cond_1b
    move-object/from16 v0, p0

    #@3ad
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@3af
    iget-object v10, v7, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@3b1
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3b4
    move-result v10

    #@3b5
    goto :goto_6

    #@3b6
    .line 777
    :cond_1c
    move-object/from16 v0, v23

    #@3b8
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3ba
    .line 778
    iget v11, v8, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@3bc
    .line 777
    if-ne v6, v11, :cond_19

    #@3be
    const/4 v11, 0x1

    #@3bf
    goto :goto_7

    #@3c0
    .line 791
    .end local v8    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v39    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_1d
    move-object/from16 v0, v34

    #@3c2
    move-object/from16 v1, v31

    #@3c4
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@3c7
    move-result-object v6

    #@3c8
    move-object/from16 v0, v19

    #@3ca
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3cd
    .line 793
    move/from16 v0, v20

    #@3cf
    move/from16 v1, v16

    #@3d1
    if-gt v0, v1, :cond_1e

    #@3d3
    move/from16 v0, v20

    #@3d5
    move/from16 v1, v16

    #@3d7
    if-ne v0, v1, :cond_4

    #@3d9
    .line 794
    if-eqz v37, :cond_4

    #@3db
    .line 795
    iget v6, v7, Landroid/net/wifi/ScanResult;->level:I

    #@3dd
    move-object/from16 v0, v37

    #@3df
    iget v9, v0, Landroid/net/wifi/ScanResult;->level:I

    #@3e1
    if-le v6, v9, :cond_4

    #@3e3
    .line 796
    :cond_1e
    move/from16 v16, v20

    #@3e5
    .line 797
    move-object/from16 v37, v7

    #@3e7
    .line 798
    .local v37, "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v14

    #@3e9
    .local v27, "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto/16 :goto_0

    #@3eb
    .line 802
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

    #@3ed
    move-object/from16 v1, p0

    #@3ef
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mFilteredScanDetails:Ljava/util/List;

    #@3f1
    .line 805
    move-object/from16 v0, p0

    #@3f3
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@3f5
    if-eqz v6, :cond_20

    #@3f7
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    #@3fa
    move-result v6

    #@3fb
    if-eqz v6, :cond_20

    #@3fd
    .line 807
    invoke-virtual/range {v44 .. v44}, Ljava/util/ArrayList;->size()I

    #@400
    move-result v6

    #@401
    new-array v6, v6, [Landroid/net/NetworkKey;

    #@403
    move-object/from16 v0, v44

    #@405
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@408
    move-result-object v43

    #@409
    check-cast v43, [Landroid/net/NetworkKey;

    #@40b
    .line 808
    .local v43, "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    move-object/from16 v0, p0

    #@40d
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mScoreManager:Landroid/net/NetworkScoreManager;

    #@40f
    move-object/from16 v0, v43

    #@411
    invoke-virtual {v6, v0}, Landroid/net/NetworkScoreManager;->requestScores([Landroid/net/NetworkKey;)Z

    #@414
    .line 811
    .end local v43    # "unscoredNetworkKeys":[Landroid/net/NetworkKey;
    :cond_20
    move-object/from16 v0, p0

    #@416
    iget-boolean v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mDbg:Z

    #@418
    if-eqz v6, :cond_21

    #@41a
    .line 812
    new-instance v6, Ljava/lang/StringBuilder;

    #@41c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@41f
    move-object/from16 v0, v24

    #@421
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@424
    move-result-object v6

    #@425
    const-string/jumbo v9, " skipped due to low signal\n"

    #@428
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42b
    move-result-object v6

    #@42c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42f
    move-result-object v6

    #@430
    move-object/from16 v0, p0

    #@432
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@435
    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    #@437
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@43a
    move-object/from16 v0, v29

    #@43c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@43f
    move-result-object v6

    #@440
    const-string/jumbo v9, " skipped due to not saved\n "

    #@443
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@446
    move-result-object v6

    #@447
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44a
    move-result-object v6

    #@44b
    move-object/from16 v0, p0

    #@44d
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@450
    .line 814
    new-instance v6, Ljava/lang/StringBuilder;

    #@452
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@455
    move-object/from16 v0, v28

    #@457
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@45a
    move-result-object v6

    #@45b
    const-string/jumbo v9, " skipped due to not valid SSID\n"

    #@45e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@461
    move-result-object v6

    #@462
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@465
    move-result-object v6

    #@466
    move-object/from16 v0, p0

    #@468
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@46b
    .line 815
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@46e
    move-result-object v6

    #@46f
    move-object/from16 v0, p0

    #@471
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@474
    .line 819
    :cond_21
    if-eqz v37, :cond_25

    #@476
    .line 820
    move-object/from16 v41, v27

    #@478
    .line 822
    .local v41, "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_22
    :goto_8
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@47b
    move-result-object v6

    #@47c
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@47f
    move-result-object v6

    #@480
    if-eqz v6, :cond_24

    #@482
    .line 823
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@485
    move-result-object v6

    #@486
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@489
    move-result-object v21

    #@48a
    .line 824
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@48c
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@48e
    move-object/from16 v0, v21

    #@490
    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@493
    move-result-object v41

    #@494
    .line 826
    if-eqz v41, :cond_23

    #@496
    .line 828
    invoke-virtual/range {v41 .. v41}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@499
    move-result-object v42

    #@49a
    .line 829
    .local v42, "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@49d
    move-result-object v6

    #@49e
    if-eqz v6, :cond_22

    #@4a0
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@4a3
    move-result v6

    #@4a4
    if-eqz v6, :cond_22

    #@4a6
    .line 830
    invoke-virtual/range {v42 .. v42}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@4a9
    move-result-object v37

    #@4aa
    .line 831
    .restart local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    move-object/from16 v27, v41

    #@4ac
    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    goto :goto_8

    #@4ad
    .line 835
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    .end local v37    # "scanResultCandidate":Landroid/net/wifi/ScanResult;
    .end local v42    # "tempStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_23
    new-instance v6, Ljava/lang/StringBuilder;

    #@4af
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b2
    const-string/jumbo v9, "Connect choice: "

    #@4b5
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b8
    move-result-object v6

    #@4b9
    move-object/from16 v0, v21

    #@4bb
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4be
    move-result-object v6

    #@4bf
    const-string/jumbo v9, " has no corresponding saved config"

    #@4c2
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c5
    move-result-object v6

    #@4c6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c9
    move-result-object v6

    #@4ca
    move-object/from16 v0, p0

    #@4cc
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLoge(Ljava/lang/String;)V

    #@4cf
    .line 839
    .end local v21    # "key":Ljava/lang/String;
    :cond_24
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d1
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4d4
    const-string/jumbo v9, "After user choice adjust, the final candidate is:"

    #@4d7
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4da
    move-result-object v6

    #@4db
    .line 840
    move-object/from16 v0, p0

    #@4dd
    move-object/from16 v1, v27

    #@4df
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@4e2
    move-result-object v9

    #@4e3
    .line 839
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e6
    move-result-object v6

    #@4e7
    .line 840
    const-string/jumbo v9, " : "

    #@4ea
    .line 839
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v6

    #@4ee
    .line 840
    move-object/from16 v0, v37

    #@4f0
    iget-object v9, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@4f2
    .line 839
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f5
    move-result-object v6

    #@4f6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f9
    move-result-object v6

    #@4fa
    move-object/from16 v0, p0

    #@4fc
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@4ff
    .line 845
    .end local v41    # "tempConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_25
    if-nez v37, :cond_26

    #@501
    .line 846
    const-string/jumbo v6, "Checking the externalScoreEvaluator for candidates..."

    #@504
    move-object/from16 v0, p0

    #@506
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@509
    .line 847
    move-object/from16 v0, p0

    #@50b
    move-object/from16 v1, v18

    #@50d
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getExternalScoreCandidate(Lcom/android/server/wifi/WifiQualifiedNetworkSelector$ExternalScoreEvaluator;)Landroid/net/wifi/WifiConfiguration;

    #@510
    move-result-object v27

    #@511
    .line 848
    .restart local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    if-eqz v27, :cond_26

    #@513
    .line 849
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@516
    move-result-object v6

    #@517
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidate()Landroid/net/wifi/ScanResult;

    #@51a
    move-result-object v37

    #@51b
    .line 853
    .end local v27    # "networkCandidate":Landroid/net/wifi/WifiConfiguration;
    :cond_26
    if-nez v37, :cond_27

    #@51d
    .line 854
    const-string/jumbo v6, "Can not find any suitable candidates"

    #@520
    move-object/from16 v0, p0

    #@522
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@525
    .line 855
    const/4 v6, 0x0

    #@526
    return-object v6

    #@527
    .line 858
    :cond_27
    move-object/from16 v0, p0

    #@529
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@52b
    if-nez v6, :cond_29

    #@52d
    const-string/jumbo v15, "Disconnected"

    #@530
    .line 860
    .local v15, "currentAssociationId":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    #@532
    move-object/from16 v1, v27

    #@534
    invoke-direct {v0, v1}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@537
    move-result-object v40

    #@538
    .line 863
    .local v40, "targetAssociationId":Ljava/lang/String;
    invoke-virtual/range {v27 .. v27}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@53b
    move-result v6

    #@53c
    if-eqz v6, :cond_28

    #@53e
    .line 865
    new-instance v6, Ljava/lang/StringBuilder;

    #@540
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@543
    const-string/jumbo v9, "\""

    #@546
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@549
    move-result-object v6

    #@54a
    move-object/from16 v0, v37

    #@54c
    iget-object v9, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@54e
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@551
    move-result-object v6

    #@552
    const-string/jumbo v9, "\""

    #@555
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@558
    move-result-object v6

    #@559
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55c
    move-result-object v6

    #@55d
    move-object/from16 v0, v27

    #@55f
    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@561
    .line 869
    :cond_28
    move-object/from16 v0, v37

    #@563
    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@565
    move-object/from16 v0, p0

    #@567
    iget-object v9, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@569
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@56c
    move-result v6

    #@56d
    if-eqz v6, :cond_2a

    #@56f
    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    #@571
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@574
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@577
    move-result-object v6

    #@578
    const-string/jumbo v9, " is already the best choice!"

    #@57b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57e
    move-result-object v6

    #@57f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@582
    move-result-object v6

    #@583
    move-object/from16 v0, p0

    #@585
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@588
    .line 879
    :goto_a
    move-object/from16 v0, v37

    #@58a
    iget-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@58c
    move-object/from16 v0, p0

    #@58e
    iput-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentBssid:Ljava/lang/String;

    #@590
    .line 880
    move-object/from16 v0, v27

    #@592
    move-object/from16 v1, p0

    #@594
    iput-object v0, v1, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@596
    .line 881
    move-object/from16 v0, p0

    #@598
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@59a
    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@59d
    move-result-wide v10

    #@59e
    move-object/from16 v0, p0

    #@5a0
    iput-wide v10, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mLastQualifiedNetworkSelectionTimeStamp:J

    #@5a2
    .line 882
    return-object v27

    #@5a3
    .line 859
    .end local v15    # "currentAssociationId":Ljava/lang/String;
    .end local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_29
    move-object/from16 v0, p0

    #@5a5
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5a7
    move-object/from16 v0, p0

    #@5a9
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@5ac
    move-result-object v15

    #@5ad
    .restart local v15    # "currentAssociationId":Ljava/lang/String;
    goto :goto_9

    #@5ae
    .line 871
    .restart local v40    # "targetAssociationId":Ljava/lang/String;
    :cond_2a
    move-object/from16 v0, p0

    #@5b0
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5b2
    if-eqz v6, :cond_2c

    #@5b4
    .line 872
    move-object/from16 v0, p0

    #@5b6
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5b8
    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5ba
    move-object/from16 v0, v27

    #@5bc
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5be
    if-eq v6, v9, :cond_2b

    #@5c0
    .line 873
    move-object/from16 v0, p0

    #@5c2
    iget-object v6, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mCurrentConnectedNetwork:Landroid/net/wifi/WifiConfiguration;

    #@5c4
    move-object/from16 v0, v27

    #@5c6
    invoke-virtual {v6, v0}, Landroid/net/wifi/WifiConfiguration;->isLinked(Landroid/net/wifi/WifiConfiguration;)Z

    #@5c9
    move-result v6

    #@5ca
    .line 871
    if-eqz v6, :cond_2c

    #@5cc
    .line 874
    :cond_2b
    new-instance v6, Ljava/lang/StringBuilder;

    #@5ce
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5d1
    const-string/jumbo v9, "Roaming from "

    #@5d4
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d7
    move-result-object v6

    #@5d8
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5db
    move-result-object v6

    #@5dc
    const-string/jumbo v9, " to "

    #@5df
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e2
    move-result-object v6

    #@5e3
    move-object/from16 v0, v40

    #@5e5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v6

    #@5e9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5ec
    move-result-object v6

    #@5ed
    move-object/from16 v0, p0

    #@5ef
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@5f2
    goto :goto_a

    #@5f3
    .line 876
    :cond_2c
    new-instance v6, Ljava/lang/StringBuilder;

    #@5f5
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5f8
    const-string/jumbo v9, "reconnect from "

    #@5fb
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5fe
    move-result-object v6

    #@5ff
    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@602
    move-result-object v6

    #@603
    const-string/jumbo v9, " to "

    #@606
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@609
    move-result-object v6

    #@60a
    move-object/from16 v0, v40

    #@60c
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60f
    move-result-object v6

    #@610
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@613
    move-result-object v6

    #@614
    move-object/from16 v0, p0

    #@616
    invoke-direct {v0, v6}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@619
    goto/16 :goto_a
.end method

.method public setUserPreferredBand(I)V
    .locals 0
    .param p1, "band"    # I

    #@0
    .prologue
    .line 161
    iput p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mUserPreferedBand:I

    #@2
    .line 160
    return-void
.end method

.method setWifiNetworkScoreCache(Lcom/android/server/wifi/WifiNetworkScoreCache;)V
    .locals 0
    .param p1, "cache"    # Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@0
    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mNetworkScoreCache:Lcom/android/server/wifi/WifiNetworkScoreCache;

    #@2
    .line 134
    return-void
.end method

.method public userSelectNetwork(IZ)Z
    .locals 16
    .param p1, "netId"    # I
    .param p2, "persist"    # Z

    #@0
    .prologue
    .line 463
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
    .line 464
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
    .line 465
    if-eqz v10, :cond_0

    #@34
    iget-object v12, v10, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@36
    if-nez v12, :cond_1

    #@38
    .line 466
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
    .line 467
    const/4 v12, 0x0

    #@54
    return v12

    #@55
    .line 471
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
    .line 472
    move-object/from16 v0, p0

    #@61
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@63
    .line 473
    const/4 v13, 0x0

    #@64
    .line 472
    move/from16 v0, p1

    #@66
    invoke-virtual {v12, v0, v13}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@69
    .line 476
    :cond_2
    if-nez p2, :cond_3

    #@6b
    .line 477
    const-string/jumbo v12, "User has no privilege to overwrite the current priority"

    #@6e
    move-object/from16 v0, p0

    #@70
    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->localLog(Ljava/lang/String;)V

    #@73
    .line 478
    const/4 v12, 0x0

    #@74
    return v12

    #@75
    .line 481
    :cond_3
    const/4 v2, 0x0

    #@76
    .line 482
    .local v2, "change":Z
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@79
    move-result-object v6

    #@7a
    .line 484
    .local v6, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@7c
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mClock:Lcom/android/server/wifi/Clock;

    #@7e
    invoke-virtual {v12}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@81
    move-result-wide v4

    #@82
    .line 485
    .local v4, "currentTime":J
    move-object/from16 v0, p0

    #@84
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@86
    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks()Ljava/util/List;

    #@89
    move-result-object v9

    #@8a
    .line 487
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
    .line 488
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
    .line 489
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@a7
    move-result-object v11

    #@a8
    .line 490
    .local v11, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@aa
    iget v13, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ac
    if-ne v12, v13, :cond_5

    #@ae
    .line 491
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@b1
    move-result-object v12

    #@b2
    if-eqz v12, :cond_4

    #@b4
    .line 492
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
    .line 493
    const-string/jumbo v13, " Set Time: "

    #@cb
    .line 492
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v12

    #@cf
    .line 493
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    #@d2
    move-result-wide v14

    #@d3
    .line 492
    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v12

    #@d7
    .line 493
    const-string/jumbo v13, " from "

    #@da
    .line 492
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v12

    #@de
    .line 494
    iget-object v13, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e0
    .line 492
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v12

    #@e4
    .line 494
    const-string/jumbo v13, " : "

    #@e7
    .line 492
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v12

    #@eb
    .line 494
    iget v13, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ed
    .line 492
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
    .line 495
    const/4 v12, 0x0

    #@fb
    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@fe
    .line 496
    const-wide/16 v12, -0x1

    #@100
    invoke-virtual {v11, v12, v13}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@103
    .line 498
    const/4 v2, 0x1

    #@104
    goto :goto_0

    #@105
    .line 503
    :cond_5
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getSeenInLastQualifiedNetworkSelection()Z

    #@108
    move-result v12

    #@109
    if-eqz v12, :cond_4

    #@10b
    .line 504
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@10e
    move-result-object v12

    #@10f
    if-eqz v12, :cond_6

    #@111
    .line 505
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
    .line 506
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
    .line 507
    move-object/from16 v0, p0

    #@13f
    invoke-direct {v0, v3}, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->getNetworkString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    #@142
    move-result-object v13

    #@143
    .line 506
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
    .line 508
    invoke-virtual {v11, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@153
    .line 509
    invoke-virtual {v11, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@156
    .line 510
    const/4 v2, 0x1

    #@157
    goto/16 :goto_0

    #@159
    .line 514
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "network":Landroid/net/wifi/WifiConfiguration;
    .end local v11    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_7
    if-eqz v2, :cond_8

    #@15b
    .line 515
    move-object/from16 v0, p0

    #@15d
    iget-object v12, v0, Lcom/android/server/wifi/WifiQualifiedNetworkSelector;->mWifiConfigManager:Lcom/android/server/wifi/WifiConfigManager;

    #@15f
    invoke-virtual {v12}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@162
    .line 516
    const/4 v12, 0x1

    #@163
    return v12

    #@164
    .line 519
    :cond_8
    const/4 v12, 0x0

    #@165
    return v12
.end method
