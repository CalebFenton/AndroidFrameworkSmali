.class public Lcom/android/server/wifi/WifiConfigManager;
.super Ljava/lang/Object;
.source "WifiConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigManager$1;,
        Lcom/android/server/wifi/WifiConfigManager$2;,
        Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;,
        Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;
    }
.end annotation


# static fields
.field private static final synthetic -android-net-IpConfiguration$IpAssignmentSwitchesValues:[I = null

.field private static final synthetic -android-net-IpConfiguration$ProxySettingsSwitchesValues:[I = null

.field private static final synthetic -android-net-NetworkInfo$DetailedStateSwitchesValues:[I = null

.field private static final DBG:Z = true

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DELETED_CONFIG_PSK:Ljava/lang/String; = "Mjkd86jEMGn79KhKll298Uu7-deleted"

.field private static final IP_CONFIG_FILE:Ljava/lang/String;

.field public static final MAX_NUM_SCAN_CACHE_ENTRIES:I = 0x80

.field public static final MAX_RX_PACKET_FOR_FULL_SCANS:I = 0x10

.field public static final MAX_RX_PACKET_FOR_PARTIAL_SCANS:I = 0x50

.field public static final MAX_TX_PACKET_FOR_FULL_SCANS:I = 0x8

.field public static final MAX_TX_PACKET_FOR_PARTIAL_SCANS:I = 0x28

.field private static final NETWORK_SELECTION_DISABLE_THRESHOLD:[I

.field private static final NETWORK_SELECTION_DISABLE_TIMEOUT:[I

.field private static final PPS_FILE:Ljava/lang/String; = "/data/misc/wifi/PerProviderSubscription.conf"

.field public static final ROAM_ON_ANY:Z = false

.field public static final TAG:Ljava/lang/String; = "WifiConfigManager"

.field private static final WIFI_VERBOSE_LOGS_KEY:Ljava/lang/String; = "WIFI_VERBOSE_LOGS"

.field private static final sConnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

.field private static final sDisconnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

.field private static sVDBG:Z

.field private static sVVDBG:Z


# instance fields
.field private mActiveScanDetail:Lcom/android/server/wifi/ScanDetail;

.field private final mActiveScanDetailLock:Ljava/lang/Object;

.field public final mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

.field public mBadLinkSpeed24:I

.field public mBadLinkSpeed5:I

.field public mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mClock:Lcom/android/server/wifi/Clock;

.field private final mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

.field private mContext:Landroid/content/Context;

.field public mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentUserId:I

.field public mDeletedEphemeralSSIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mEnableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mEnableLinkDebouncing:Z

.field private final mEnableOsuQueries:Z

.field public final mEnableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

.field private mFacade:Lcom/android/server/wifi/FrameworkFacade;

.field public mGoodLinkSpeed24:I

.field public mGoodLinkSpeed5:I

.field private mIpconfigStore:Lcom/android/server/net/IpConfigStore;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLastPriority:I

.field private mLastSelectedConfiguration:Ljava/lang/String;

.field private mLastSelectedTimeStamp:J

.field public mLastUnwantedNetworkDisconnectTimestamp:J

.field private final mLocalLog:Landroid/util/LocalLog;

.field private mLostConfigsDbg:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

.field public final mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mNetworkSwitchingBlackListPeriodMs:I

.field private mOnlyLinkSameCredentialConfigurations:Z

.field private final mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

.field private mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wifi/ScanDetailCache;",
            ">;"
        }
    .end annotation
.end field

.field private mShowNetworks:Z

.field private final mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

.field private final mSupplicantBridgeCallbacks:Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

.field public mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mUserManager:Landroid/os/UserManager;

.field private final mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

.field private final mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

.field private mWriter:Lcom/android/server/net/DelayedDiskWrite;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiConfigManager;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiConfigManager;)Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$IpAssignment;->values()[Landroid/net/IpConfiguration$IpAssignment;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@10
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@19
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    #@22
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$IpAssignmentSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/IpConfiguration$ProxySettings;->values()[Landroid/net/IpConfiguration$ProxySettings;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@10
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    #@19
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    #@22
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    #@2b
    invoke-virtual {v1}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-IpConfiguration$ProxySettingsSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method private static synthetic -getandroid-net-NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/16 v2, 0xa

    #@16
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    #@18
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@1a
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@1d
    move-result v1

    #@1e
    const/16 v2, 0xb

    #@20
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    #@22
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@24
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@27
    move-result v1

    #@28
    const/16 v2, 0xc

    #@2a
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    #@2c
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2e
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@31
    move-result v1

    #@32
    const/4 v2, 0x1

    #@33
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    #@35
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@37
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@3a
    move-result v1

    #@3b
    const/16 v2, 0xd

    #@3d
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    #@3f
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@41
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@44
    move-result v1

    #@45
    const/4 v2, 0x2

    #@46
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    #@48
    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@4a
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@4d
    move-result v1

    #@4e
    const/16 v2, 0xe

    #@50
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@52
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@54
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@57
    move-result v1

    #@58
    const/16 v2, 0xf

    #@5a
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@5c
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@5e
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@61
    move-result v1

    #@62
    const/16 v2, 0x10

    #@64
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@66
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@68
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@6b
    move-result v1

    #@6c
    const/16 v2, 0x11

    #@6e
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@70
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@72
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@75
    move-result v1

    #@76
    const/16 v2, 0x12

    #@78
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@7a
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@7c
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@7f
    move-result v1

    #@80
    const/16 v2, 0x13

    #@82
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@84
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@86
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@89
    move-result v1

    #@8a
    const/16 v2, 0x14

    #@8c
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@8e
    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->-android-net-NetworkInfo$DetailedStateSwitchesValues:[I

    #@90
    return-object v0

    #@91
    :catch_0
    move-exception v1

    #@92
    goto :goto_c

    #@93
    :catch_1
    move-exception v1

    #@94
    goto :goto_b

    #@95
    :catch_2
    move-exception v1

    #@96
    goto :goto_a

    #@97
    :catch_3
    move-exception v1

    #@98
    goto :goto_9

    #@99
    :catch_4
    move-exception v1

    #@9a
    goto :goto_8

    #@9b
    :catch_5
    move-exception v1

    #@9c
    goto :goto_7

    #@9d
    :catch_6
    move-exception v1

    #@9e
    goto :goto_6

    #@9f
    :catch_7
    move-exception v1

    #@a0
    goto :goto_5

    #@a1
    :catch_8
    move-exception v1

    #@a2
    goto :goto_4

    #@a3
    :catch_9
    move-exception v1

    #@a4
    goto :goto_3

    #@a5
    :catch_a
    move-exception v1

    #@a6
    goto :goto_2

    #@a7
    :catch_b
    move-exception v1

    #@a8
    goto/16 :goto_1

    #@aa
    :catch_c
    move-exception v1

    #@ab
    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p0, "matches"    # Ljava/util/Map;

    #@0
    .prologue
    invoke-static {p0}, Lcom/android/server/wifi/WifiConfigManager;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 1
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V
    .locals 0
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "matches"    # Ljava/util/Map;
    .param p3, "associatedWifiConfigurations"    # Ljava/util/List;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 0
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "anqpElements"    # Ljava/util/Map;

    #@0
    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0xa

    #@2
    const/4 v0, 0x0

    #@3
    .line 154
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@5
    .line 155
    sput-boolean v0, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    #@7
    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    const-string/jumbo v1, "/misc/wifi/ipconfig.txt"

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    .line 165
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    #@21
    .line 191
    new-array v0, v2, [I

    #@23
    fill-array-data v0, :array_0

    #@26
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    #@28
    .line 207
    new-array v0, v2, [I

    #@2a
    fill-array-data v0, :array_1

    #@2d
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT:[I

    #@2f
    .line 1040
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$1;

    #@31
    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$1;-><init>()V

    #@34
    .line 1039
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sDisconnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    #@36
    .line 1073
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$2;

    #@38
    invoke-direct {v0}, Lcom/android/server/wifi/WifiConfigManager$2;-><init>()V

    #@3b
    .line 1072
    sput-object v0, Lcom/android/server/wifi/WifiConfigManager;->sConnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    #@3d
    .line 153
    return-void

    #@3e
    .line 191
    :array_0
    .array-data 4
        -0x1
        0x1
        0x5
        0x5
        0x5
        0x5
        0x6
        0x1
        0x1
        0x1
    .end array-data

    #@56
    .line 207
    :array_1
    .array-data 4
        0x7fffffff
        0xf
        0x5
        0x5
        0x5
        0x5
        0x7fffffff
        0x7fffffff
        0x7fffffff
        0x7fffffff
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/FrameworkFacade;Lcom/android/server/wifi/Clock;Landroid/os/UserManager;Landroid/security/KeyStore;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiNative"    # Lcom/android/server/wifi/WifiNative;
    .param p3, "facade"    # Lcom/android/server/wifi/FrameworkFacade;
    .param p4, "clock"    # Lcom/android/server/wifi/Clock;
    .param p5, "userManager"    # Landroid/os/UserManager;
    .param p6, "keyStore"    # Landroid/security/KeyStore;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 220
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@b
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@d
    .line 221
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@f
    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@12
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableChipWakeUpWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@14
    .line 222
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@16
    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    #@19
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableRssiPollWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1b
    .line 223
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@1d
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@20
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@22
    .line 224
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@24
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@27
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@29
    .line 225
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@2b
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@2e
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@30
    .line 226
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@32
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    #@35
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mAlwaysEnableScansWhileAssociated:Ljava/util/concurrent/atomic/AtomicInteger;

    #@37
    .line 227
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@39
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@3c
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@3e
    .line 238
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@40
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@43
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@45
    .line 239
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@47
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@4a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4c
    .line 240
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@4e
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@51
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@53
    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@55
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@58
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@5a
    .line 242
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@5c
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@5f
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@61
    .line 243
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    #@63
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    #@66
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    #@68
    .line 248
    const-wide/16 v0, 0x0

    #@6a
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastUnwantedNetworkDisconnectTimestamp:J

    #@6c
    .line 257
    new-instance v0, Ljava/util/HashSet;

    #@6e
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@71
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@73
    .line 273
    new-instance v0, Ljava/lang/Object;

    #@75
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@78
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetailLock:Ljava/lang/Object;

    #@7a
    .line 281
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@7c
    .line 282
    iput v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@7e
    .line 288
    const/4 v0, -0x1

    #@7f
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@81
    .line 297
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@83
    .line 299
    const-wide/16 v0, -0x1

    #@85
    .line 298
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    #@87
    .line 305
    new-instance v0, Ljava/util/HashSet;

    #@89
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@8c
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    #@8e
    .line 337
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@90
    .line 338
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigManager;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@92
    .line 339
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@94
    .line 340
    iput-object p6, p0, Lcom/android/server/wifi/WifiConfigManager;->mKeyStore:Landroid/security/KeyStore;

    #@96
    .line 341
    iput-object p5, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    #@98
    .line 343
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@9a
    if-eqz v0, :cond_0

    #@9c
    .line 344
    invoke-static {}, Lcom/android/server/wifi/WifiNative;->getLocalLog()Landroid/util/LocalLog;

    #@9f
    move-result-object v0

    #@a0
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@a2
    .line 349
    :goto_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@a4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@a7
    move-result-object v0

    #@a8
    .line 350
    const v1, 0x112001f

    #@ab
    .line 349
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@ae
    move-result v0

    #@af
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    #@b1
    .line 351
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@b3
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@b5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@b8
    move-result-object v1

    #@b9
    .line 352
    const v2, 0x10e0036

    #@bc
    .line 351
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@bf
    move-result v1

    #@c0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@c3
    .line 353
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@c5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@c8
    move-result-object v0

    #@c9
    .line 354
    const v1, 0x1120019

    #@cc
    .line 353
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@cf
    move-result v0

    #@d0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableLinkDebouncing:Z

    #@d2
    .line 355
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBandAward5Ghz:Ljava/util/concurrent/atomic/AtomicInteger;

    #@d4
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@d6
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@d9
    move-result-object v1

    #@da
    .line 356
    const v2, 0x10e0014

    #@dd
    .line 355
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@e0
    move-result v1

    #@e1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@e4
    .line 357
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@e6
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@e8
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@eb
    move-result-object v1

    #@ec
    .line 358
    const v2, 0x10e001c

    #@ef
    .line 357
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@f2
    move-result v1

    #@f3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@f6
    .line 359
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@f8
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@fa
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@fd
    move-result-object v1

    #@fe
    .line 360
    const v2, 0x10e001d

    #@101
    .line 359
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@104
    move-result v1

    #@105
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@108
    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi5:Ljava/util/concurrent/atomic/AtomicInteger;

    #@10a
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@10c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@10f
    move-result-object v1

    #@110
    .line 362
    const v2, 0x10e001e

    #@113
    .line 361
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@116
    move-result v1

    #@117
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@11a
    .line 363
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdMinimumRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@11c
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@11e
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@121
    move-result-object v1

    #@122
    .line 364
    const v2, 0x10e001f

    #@125
    .line 363
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@128
    move-result v1

    #@129
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@12c
    .line 365
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdQualifiedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@12e
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@130
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@133
    move-result-object v1

    #@134
    .line 366
    const v2, 0x10e0020

    #@137
    .line 365
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@13a
    move-result v1

    #@13b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@13e
    .line 367
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mThresholdSaturatedRssi24:Ljava/util/concurrent/atomic/AtomicInteger;

    #@140
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@142
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@145
    move-result-object v1

    #@146
    .line 368
    const v2, 0x10e0021

    #@149
    .line 367
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@14c
    move-result v1

    #@14d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@150
    .line 369
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@155
    move-result-object v0

    #@156
    .line 370
    const v1, 0x112001d

    #@159
    .line 369
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@15c
    move-result v0

    #@15d
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableWifiCellularHandoverUserTriggeredAdjustment:Z

    #@15f
    .line 371
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@161
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@164
    move-result-object v0

    #@165
    .line 372
    const v1, 0x10e0022

    #@168
    .line 371
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@16b
    move-result v0

    #@16c
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed24:I

    #@16e
    .line 373
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@170
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@173
    move-result-object v0

    #@174
    .line 374
    const v1, 0x10e0023

    #@177
    .line 373
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@17a
    move-result v0

    #@17b
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mBadLinkSpeed5:I

    #@17d
    .line 375
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@17f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@182
    move-result-object v0

    #@183
    .line 376
    const v1, 0x10e0024

    #@186
    .line 375
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@189
    move-result v0

    #@18a
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed24:I

    #@18c
    .line 377
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@18e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@191
    move-result-object v0

    #@192
    .line 378
    const v1, 0x10e0025

    #@195
    .line 377
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@198
    move-result v0

    #@199
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mGoodLinkSpeed5:I

    #@19b
    .line 379
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@19d
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@19f
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1a2
    move-result-object v1

    #@1a3
    .line 380
    const v2, 0x112001e

    #@1a6
    .line 379
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1a9
    move-result v1

    #@1aa
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@1ad
    .line 381
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentNetworkBoost:Ljava/util/concurrent/atomic/AtomicInteger;

    #@1af
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@1b1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1b4
    move-result-object v1

    #@1b5
    .line 382
    const v2, 0x10e0037

    #@1b8
    .line 381
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@1bb
    move-result v1

    #@1bc
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@1bf
    .line 383
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@1c1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1c4
    move-result-object v0

    #@1c5
    .line 384
    const v1, 0x10e002d

    #@1c8
    .line 383
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    #@1cb
    move-result v0

    #@1cc
    iput v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkSwitchingBlackListPeriodMs:I

    #@1ce
    .line 386
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@1d0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1d3
    move-result-object v0

    #@1d4
    const v1, 0x1120017

    #@1d7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@1da
    move-result v6

    #@1db
    .line 387
    .local v6, "hs2on":Z
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    #@1de
    move-result-object v0

    #@1df
    invoke-static {v0}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@1e2
    move-result-object v1

    #@1e3
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1e8
    const-string/jumbo v2, "Passpoint is "

    #@1eb
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ee
    move-result-object v2

    #@1ef
    if-eqz v6, :cond_1

    #@1f1
    const-string/jumbo v0, "enabled"

    #@1f4
    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f7
    move-result-object v0

    #@1f8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fb
    move-result-object v0

    #@1fc
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1ff
    .line 389
    new-instance v0, Lcom/android/server/wifi/ConfigurationMap;

    #@201
    invoke-direct {v0, p5}, Lcom/android/server/wifi/ConfigurationMap;-><init>(Landroid/os/UserManager;)V

    #@204
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@206
    .line 390
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@208
    new-instance v1, Ljava/io/File;

    #@20a
    const-string/jumbo v2, "/data/misc/wifi/PerProviderSubscription.conf"

    #@20d
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@210
    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;-><init>(Ljava/io/File;Z)V

    #@213
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@215
    .line 391
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    #@217
    .line 392
    new-instance v0, Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@219
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@21b
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;-><init>(Lcom/android/server/wifi/Clock;)V

    #@21e
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@220
    .line 393
    new-instance v0, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

    #@222
    invoke-direct {v0, p0, v3}, Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;-><init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;)V

    #@225
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridgeCallbacks:Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

    #@227
    .line 394
    new-instance v0, Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@229
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridgeCallbacks:Lcom/android/server/wifi/WifiConfigManager$SupplicantBridgeCallbacks;

    #@22b
    invoke-direct {v0, p2, v1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;-><init>(Lcom/android/server/wifi/WifiNative;Lcom/android/server/wifi/hotspot2/SupplicantBridge$SupplicantBridgeCallbacks;)V

    #@22e
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@230
    .line 395
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@232
    const/16 v1, 0x10

    #@234
    const/high16 v2, 0x3f400000    # 0.75f

    #@236
    const/4 v3, 0x2

    #@237
    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    #@23a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@23c
    .line 396
    new-instance v0, Lcom/android/server/wifi/SIMAccessor;

    #@23e
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@240
    invoke-direct {v0, v1}, Lcom/android/server/wifi/SIMAccessor;-><init>(Landroid/content/Context;)V

    #@243
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    #@245
    .line 397
    new-instance v0, Lcom/android/server/net/DelayedDiskWrite;

    #@247
    invoke-direct {v0}, Lcom/android/server/net/DelayedDiskWrite;-><init>()V

    #@24a
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@24c
    .line 398
    new-instance v0, Lcom/android/server/net/IpConfigStore;

    #@24e
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@250
    invoke-direct {v0, v1}, Lcom/android/server/net/IpConfigStore;-><init>(Lcom/android/server/net/DelayedDiskWrite;)V

    #@253
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    #@255
    .line 399
    new-instance v0, Lcom/android/server/wifi/WifiNetworkHistory;

    #@257
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@259
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@25b
    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNetworkHistory;-><init>(Landroid/content/Context;Landroid/util/LocalLog;Lcom/android/server/net/DelayedDiskWrite;)V

    #@25e
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    #@260
    .line 401
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore;

    #@262
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mKeyStore:Landroid/security/KeyStore;

    #@264
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@266
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@268
    move-object v1, p2

    #@269
    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiConfigStore;-><init>(Lcom/android/server/wifi/WifiNative;Landroid/security/KeyStore;Landroid/util/LocalLog;ZZ)V

    #@26c
    .line 400
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@26e
    .line 336
    return-void

    #@26f
    .line 346
    .end local v6    # "hs2on":Z
    :cond_0
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@271
    goto/16 :goto_0

    #@273
    .line 387
    .restart local v6    # "hs2on":Z
    :cond_1
    const-string/jumbo v0, "disabled"

    #@276
    goto/16 :goto_1
.end method

.method private addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 27
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 1932
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@2
    if-eqz v5, :cond_0

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, "addOrUpdateNetworkNative "

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v5

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-direct {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@21
    .line 1933
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@2b
    invoke-virtual {v5}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->isEnabled()Z

    #@2e
    move-result v5

    #@2f
    if-eqz v5, :cond_2

    #@31
    .line 1938
    :cond_1
    const/16 v20, 0x0

    #@33
    .line 1939
    .local v20, "newNetwork":Z
    const/16 v16, 0x0

    #@35
    .line 1942
    .local v16, "existingMO":Z
    move-object/from16 v0, p1

    #@37
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@39
    const/4 v6, -0x1

    #@3a
    if-ne v5, v6, :cond_5

    #@3c
    .line 1944
    move-object/from16 v0, p0

    #@3e
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@40
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@47
    move-result-object v15

    #@48
    .line 1945
    .local v15, "currentConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v15, :cond_3

    #@4a
    .line 1946
    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4c
    move-object/from16 v0, p1

    #@4e
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@50
    .line 1962
    :goto_0
    new-instance v21, Landroid/net/wifi/WifiConfiguration;

    #@52
    move-object/from16 v0, v21

    #@54
    invoke-direct {v0, v15}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@57
    .line 1964
    .local v21, "originalConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    #@59
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@5b
    move-object/from16 v0, p1

    #@5d
    invoke-virtual {v5, v0, v15}, Lcom/android/server/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    #@60
    move-result v5

    #@61
    if-nez v5, :cond_6

    #@63
    .line 1965
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@65
    const/4 v6, -0x1

    #@66
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@69
    return-object v5

    #@6a
    .line 1934
    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v16    # "existingMO":Z
    .end local v20    # "newNetwork":Z
    .end local v21    # "originalConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const-string/jumbo v5, "WifiConfigManager"

    #@6d
    const-string/jumbo v6, "Passpoint is not enabled"

    #@70
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 1935
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@75
    const/4 v6, -0x1

    #@76
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@79
    return-object v5

    #@7a
    .line 1948
    .restart local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v16    # "existingMO":Z
    .restart local v20    # "newNetwork":Z
    :cond_3
    move-object/from16 v0, p0

    #@7c
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@7e
    move-object/from16 v0, p1

    #@80
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@82
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@85
    move-result-object v5

    #@86
    if-eqz v5, :cond_4

    #@88
    .line 1949
    new-instance v5, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v6, "addOrUpdateNetworkNative passpoint "

    #@90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    move-object/from16 v0, p1

    #@96
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@98
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v5

    #@9c
    .line 1950
    const-string/jumbo v6, " was found, but no network Id"

    #@9f
    .line 1949
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    move-object/from16 v0, p0

    #@a9
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@ac
    .line 1951
    const/16 v16, 0x1

    #@ae
    .line 1953
    :cond_4
    const/16 v20, 0x1

    #@b0
    goto :goto_0

    #@b1
    .line 1957
    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    move-object/from16 v0, p0

    #@b3
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@b5
    move-object/from16 v0, p1

    #@b7
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b9
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@bc
    move-result-object v15

    #@bd
    .restart local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    goto :goto_0

    #@be
    .line 1967
    .restart local v21    # "originalConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    move-object/from16 v0, p1

    #@c0
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c2
    move/from16 v19, v0

    #@c4
    .line 1968
    .local v19, "netId":I
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@c7
    move-result-object v25

    #@c8
    .line 1977
    .local v25, "savedConfigKey":Ljava/lang/String;
    if-nez v15, :cond_8

    #@ca
    .line 1978
    new-instance v15, Landroid/net/wifi/WifiConfiguration;

    #@cc
    .end local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {v15}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@cf
    .line 1979
    .restart local v15    # "currentConfig":Landroid/net/wifi/WifiConfiguration;
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    #@d1
    invoke-virtual {v15, v5}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    #@d4
    .line 1980
    sget-object v5, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    #@d6
    invoke-virtual {v15, v5}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    #@d9
    .line 1981
    move/from16 v0, v19

    #@db
    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@dd
    .line 1982
    if-eqz p1, :cond_7

    #@df
    .line 1984
    move-object/from16 v0, p1

    #@e1
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@e3
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@e5
    .line 1985
    move-object/from16 v0, p1

    #@e7
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@e9
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@eb
    .line 1986
    move-object/from16 v0, p1

    #@ed
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@ef
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@f1
    .line 1987
    move-object/from16 v0, p1

    #@f3
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@f5
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@f7
    .line 1988
    move-object/from16 v0, p1

    #@f9
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@fb
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@fd
    .line 1989
    move-object/from16 v0, p1

    #@ff
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@101
    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@103
    .line 1990
    move-object/from16 v0, p1

    #@105
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@107
    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@109
    .line 1991
    move-object/from16 v0, p1

    #@10b
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@10d
    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@10f
    .line 1992
    move-object/from16 v0, p1

    #@111
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@113
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@115
    .line 1993
    move-object/from16 v0, p1

    #@117
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@119
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@11b
    .line 1994
    move-object/from16 v0, p1

    #@11d
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@11f
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@121
    .line 1995
    move-object/from16 v0, p1

    #@123
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@125
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@127
    .line 1996
    move-object/from16 v0, p1

    #@129
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@12b
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@12d
    .line 1997
    move-object/from16 v0, p1

    #@12f
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@131
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@133
    .line 1998
    move-object/from16 v0, p1

    #@135
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@137
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@139
    .line 1999
    move-object/from16 v0, p1

    #@13b
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@13d
    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@13f
    .line 2000
    move-object/from16 v0, p1

    #@141
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@143
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@145
    .line 2001
    move-object/from16 v0, p1

    #@147
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@149
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@14b
    .line 2002
    move-object/from16 v0, p1

    #@14d
    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@14f
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@151
    .line 2005
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    #@153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@156
    const-string/jumbo v6, "created new config netId="

    #@159
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v5

    #@15d
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@160
    move-result-object v6

    #@161
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@164
    move-result-object v5

    #@165
    .line 2006
    const-string/jumbo v6, " uid="

    #@168
    .line 2005
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16b
    move-result-object v5

    #@16c
    .line 2006
    iget v6, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@16e
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@171
    move-result-object v6

    #@172
    .line 2005
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@175
    move-result-object v5

    #@176
    .line 2007
    const-string/jumbo v6, " name="

    #@179
    .line 2005
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17c
    move-result-object v5

    #@17d
    .line 2007
    iget-object v6, v15, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@17f
    .line 2005
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@182
    move-result-object v5

    #@183
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@186
    move-result-object v5

    #@187
    move-object/from16 v0, p0

    #@189
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@18c
    .line 2012
    :cond_8
    const/16 v17, 0x0

    #@18e
    .line 2014
    .local v17, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v16, :cond_9

    #@190
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@193
    move-result v5

    #@194
    if-eqz v5, :cond_1b

    #@196
    .line 2016
    :try_start_0
    move-object/from16 v0, p1

    #@198
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@19a
    if-nez v5, :cond_1a

    #@19c
    .line 2018
    new-instance v13, Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@19e
    move-object/from16 v0, p1

    #@1a0
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v8, v0, Lcom/android/server/wifi/WifiConfigManager;->mKeyStore:Landroid/security/KeyStore;

    #@1a6
    if-eqz v20, :cond_e

    #@1a8
    const/4 v5, 0x0

    #@1a9
    :goto_1
    invoke-direct {v13, v6, v8, v5}, Lcom/android/server/wifi/hotspot2/pps/Credential;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/security/KeyStore;Z)V

    #@1ac
    .line 2019
    .local v13, "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    new-instance v7, Ljava/util/HashSet;

    #@1ae
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@1b1
    .line 2020
    .local v7, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p1

    #@1b3
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@1b5
    const/4 v5, 0x0

    #@1b6
    array-length v8, v6

    #@1b7
    :goto_2
    if-ge v5, v8, :cond_f

    #@1b9
    aget-wide v10, v6, v5

    #@1bb
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1be
    move-result-object v24

    #@1bf
    .line 2021
    .local v24, "roamingConsortiumId":Ljava/lang/Long;
    move-object/from16 v0, v24

    #@1c1
    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@1c4
    .line 2020
    add-int/lit8 v5, v5, 0x1

    #@1c6
    goto :goto_2

    #@1c7
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    .end local v24    # "roamingConsortiumId":Ljava/lang/Long;
    :cond_9
    move-object/from16 v4, v17

    #@1c9
    .line 2041
    .end local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .local v4, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :goto_3
    const/4 v5, -0x1

    #@1ca
    move/from16 v0, p2

    #@1cc
    if-eq v0, v5, :cond_a

    #@1ce
    .line 2042
    if-eqz v20, :cond_10

    #@1d0
    .line 2043
    move/from16 v0, p2

    #@1d2
    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@1d4
    .line 2050
    :cond_a
    :goto_4
    new-instance v26, Ljava/lang/StringBuilder;

    #@1d6
    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    #@1d9
    .line 2051
    .local v26, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "time="

    #@1dc
    move-object/from16 v0, v26

    #@1de
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e1
    .line 2052
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@1e4
    move-result-object v14

    #@1e5
    .line 2053
    .local v14, "c":Ljava/util/Calendar;
    move-object/from16 v0, p0

    #@1e7
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@1e9
    invoke-virtual {v5}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@1ec
    move-result-wide v8

    #@1ed
    invoke-virtual {v14, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@1f0
    .line 2054
    const-string/jumbo v5, "%tm-%td %tH:%tM:%tS.%tL"

    #@1f3
    const/4 v6, 0x6

    #@1f4
    new-array v6, v6, [Ljava/lang/Object;

    #@1f6
    const/4 v8, 0x0

    #@1f7
    aput-object v14, v6, v8

    #@1f9
    const/4 v8, 0x1

    #@1fa
    aput-object v14, v6, v8

    #@1fc
    const/4 v8, 0x2

    #@1fd
    aput-object v14, v6, v8

    #@1ff
    const/4 v8, 0x3

    #@200
    aput-object v14, v6, v8

    #@202
    const/4 v8, 0x4

    #@203
    aput-object v14, v6, v8

    #@205
    const/4 v8, 0x5

    #@206
    aput-object v14, v6, v8

    #@208
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@20b
    move-result-object v5

    #@20c
    move-object/from16 v0, v26

    #@20e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    .line 2056
    if-eqz v20, :cond_11

    #@213
    .line 2057
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@216
    move-result-object v5

    #@217
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@219
    .line 2062
    :goto_5
    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->status:I

    #@21b
    const/4 v6, 0x2

    #@21c
    if-ne v5, v6, :cond_b

    #@21e
    .line 2064
    iget v5, v15, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@220
    .line 2065
    const/4 v6, 0x0

    #@221
    .line 2064
    move-object/from16 v0, p0

    #@223
    invoke-virtual {v0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@226
    .line 2068
    :cond_b
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@229
    move-result-object v5

    #@22a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getLastSelectedConfiguration()Ljava/lang/String;

    #@22d
    move-result-object v6

    #@22e
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@231
    move-result v5

    #@232
    if-eqz v5, :cond_c

    #@234
    .line 2069
    iget-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@236
    .line 2068
    if-eqz v5, :cond_c

    #@238
    .line 2071
    const/4 v5, 0x0

    #@239
    iput-boolean v5, v15, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@23b
    .line 2073
    new-instance v5, Ljava/lang/StringBuilder;

    #@23d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@240
    const-string/jumbo v6, "remove ephemeral status netId="

    #@243
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    move-result-object v5

    #@247
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24a
    move-result-object v6

    #@24b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v5

    #@24f
    .line 2074
    const-string/jumbo v6, " "

    #@252
    .line 2073
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@255
    move-result-object v5

    #@256
    .line 2074
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@259
    move-result-object v6

    #@25a
    .line 2073
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25d
    move-result-object v5

    #@25e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@261
    move-result-object v5

    #@262
    move-object/from16 v0, p0

    #@264
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@267
    .line 2078
    :cond_c
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@269
    if-eqz v5, :cond_d

    #@26b
    new-instance v5, Ljava/lang/StringBuilder;

    #@26d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@270
    const-string/jumbo v6, "will read network variables netId="

    #@273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@276
    move-result-object v5

    #@277
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27a
    move-result-object v6

    #@27b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v5

    #@27f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@282
    move-result-object v5

    #@283
    move-object/from16 v0, p0

    #@285
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@288
    .line 2080
    :cond_d
    move-object/from16 v0, p0

    #@28a
    invoke-direct {v0, v15}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    #@28d
    .line 2083
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@290
    move-result-object v5

    #@291
    move-object/from16 v0, v25

    #@293
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@296
    move-result v5

    #@297
    if-nez v5, :cond_12

    #@299
    .line 2084
    move-object/from16 v0, p0

    #@29b
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@29d
    invoke-virtual {v5, v15}, Lcom/android/server/wifi/WifiConfigStore;->saveNetworkMetadata(Landroid/net/wifi/WifiConfiguration;)Z

    #@2a0
    move-result v5

    #@2a1
    if-nez v5, :cond_12

    #@2a3
    .line 2085
    new-instance v5, Ljava/lang/StringBuilder;

    #@2a5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2a8
    const-string/jumbo v6, "Failed to set network metadata. Removing config "

    #@2ab
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    move-result-object v5

    #@2af
    move-object/from16 v0, p1

    #@2b1
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2b3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b6
    move-result-object v5

    #@2b7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2ba
    move-result-object v5

    #@2bb
    move-object/from16 v0, p0

    #@2bd
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@2c0
    .line 2086
    move-object/from16 v0, p0

    #@2c2
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2c4
    move-object/from16 v0, p1

    #@2c6
    invoke-virtual {v5, v0}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@2c9
    .line 2087
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@2cb
    const/4 v6, -0x1

    #@2cc
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@2cf
    return-object v5

    #@2d0
    .line 2018
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v14    # "c":Ljava/util/Calendar;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_e
    const/4 v5, 0x1

    #@2d1
    goto/16 :goto_1

    #@2d3
    .line 2024
    .restart local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :cond_f
    :try_start_1
    new-instance v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@2d5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    #@2d8
    move-result-object v5

    #@2d9
    move-object/from16 v0, p1

    #@2db
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2dd
    .line 2025
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@2e0
    move-result-object v8

    #@2e1
    .line 2026
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    #@2e4
    move-result-object v9

    #@2e5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@2e8
    move-result-object v10

    #@2e9
    .line 2027
    move-object/from16 v0, p1

    #@2eb
    iget-object v11, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@2ed
    const/4 v12, 0x0

    #@2ee
    .line 2024
    invoke-direct/range {v4 .. v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;-><init>(Ljava/util/Map;Ljava/lang/String;Ljava/util/HashSet;Ljava/util/Set;Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/Credential;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f1
    .line 2029
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@2f3
    .end local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2f6
    const-string/jumbo v6, "created a homeSP object for "

    #@2f9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fc
    move-result-object v5

    #@2fd
    move-object/from16 v0, p1

    #@2ff
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@301
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@304
    move-result-object v5

    #@305
    const-string/jumbo v6, ":"

    #@308
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30b
    move-result-object v5

    #@30c
    move-object/from16 v0, p1

    #@30e
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@310
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@313
    move-result-object v5

    #@314
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@317
    move-result-object v5

    #@318
    move-object/from16 v0, p0

    #@31a
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@31d
    .line 2033
    .end local v7    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v13    # "credential":Lcom/android/server/wifi/hotspot2/pps/Credential;
    :goto_6
    iget-object v5, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@31f
    move-object/from16 v0, p1

    #@321
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@323
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getRealm()Ljava/lang/String;

    #@326
    move-result-object v6

    #@327
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    #@32a
    .line 2034
    iget-object v5, v15, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@32c
    move-object/from16 v0, p1

    #@32e
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@330
    invoke-virtual {v6}, Landroid/net/wifi/WifiEnterpriseConfig;->getPlmn()Ljava/lang/String;

    #@333
    move-result-object v6

    #@334
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@337
    goto/16 :goto_3

    #@339
    .line 2035
    :catch_0
    move-exception v18

    #@33a
    .line 2036
    .local v18, "ioe":Ljava/io/IOException;
    :goto_7
    const-string/jumbo v5, "WifiConfigManager"

    #@33d
    new-instance v6, Ljava/lang/StringBuilder;

    #@33f
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@342
    const-string/jumbo v8, "Failed to create Passpoint config: "

    #@345
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@348
    move-result-object v6

    #@349
    move-object/from16 v0, v18

    #@34b
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@34e
    move-result-object v6

    #@34f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@352
    move-result-object v6

    #@353
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@356
    .line 2037
    new-instance v5, Lcom/android/server/wifi/NetworkUpdateResult;

    #@358
    const/4 v6, -0x1

    #@359
    invoke-direct {v5, v6}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@35c
    return-object v5

    #@35d
    .line 2045
    .end local v18    # "ioe":Ljava/io/IOException;
    :cond_10
    move/from16 v0, p2

    #@35f
    iput v0, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@361
    goto/16 :goto_4

    #@363
    .line 2059
    .restart local v14    # "c":Ljava/util/Calendar;
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_11
    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@366
    move-result-object v5

    #@367
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@369
    goto/16 :goto_5

    #@36b
    .line 2091
    :cond_12
    const/16 v22, 0x0

    #@36d
    .line 2093
    .local v22, "passwordChanged":Z
    if-nez v20, :cond_13

    #@36f
    move-object/from16 v0, p1

    #@371
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@373
    if-eqz v5, :cond_13

    #@375
    move-object/from16 v0, p1

    #@377
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@379
    const-string/jumbo v6, "*"

    #@37c
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37f
    move-result v5

    #@380
    if-eqz v5, :cond_19

    #@382
    .line 2097
    :cond_13
    :goto_8
    if-nez v20, :cond_14

    #@384
    if-nez v22, :cond_14

    #@386
    move-object/from16 v0, p0

    #@388
    move-object/from16 v1, v21

    #@38a
    invoke-direct {v0, v1, v15}, Lcom/android/server/wifi/WifiConfigManager;->wasCredentialChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z

    #@38d
    move-result v5

    #@38e
    if-eqz v5, :cond_15

    #@390
    .line 2098
    :cond_14
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@393
    move-result-object v5

    #@394
    const/4 v6, 0x0

    #@395
    invoke-virtual {v5, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setHasEverConnected(Z)V

    #@398
    .line 2102
    :cond_15
    move-object/from16 v0, p1

    #@39a
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@39c
    if-eqz v5, :cond_16

    #@39e
    .line 2103
    move-object/from16 v0, p1

    #@3a0
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@3a2
    iput-object v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@3a4
    .line 2105
    :cond_16
    move-object/from16 v0, p1

    #@3a6
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@3a8
    const/4 v6, -0x1

    #@3a9
    if-eq v5, v6, :cond_17

    #@3ab
    .line 2106
    move-object/from16 v0, p1

    #@3ad
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@3af
    iput v5, v15, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@3b1
    .line 2109
    :cond_17
    move-object/from16 v0, p0

    #@3b3
    iget-object v5, v0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3b5
    invoke-virtual {v5, v15}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@3b8
    .line 2112
    move-object/from16 v0, p0

    #@3ba
    move-object/from16 v1, p1

    #@3bc
    move/from16 v2, v20

    #@3be
    invoke-direct {v0, v15, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)Lcom/android/server/wifi/NetworkUpdateResult;

    #@3c1
    move-result-object v23

    #@3c2
    .line 2113
    .local v23, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    move-object/from16 v0, v23

    #@3c4
    move/from16 v1, v20

    #@3c6
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setIsNewNetwork(Z)V

    #@3c9
    .line 2114
    move-object/from16 v0, v23

    #@3cb
    move/from16 v1, v19

    #@3cd
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/NetworkUpdateResult;->setNetworkId(I)V

    #@3d0
    .line 2116
    if-eqz v4, :cond_18

    #@3d2
    .line 2117
    const/4 v5, 0x0

    #@3d3
    move-object/from16 v0, p0

    #@3d5
    invoke-virtual {v0, v5, v4}, Lcom/android/server/wifi/WifiConfigManager;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@3d8
    .line 2120
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@3db
    .line 2121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@3de
    .line 2123
    return-object v23

    #@3df
    .line 2094
    .end local v23    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_19
    const/16 v22, 0x1

    #@3e1
    goto :goto_8

    #@3e2
    .line 2035
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v14    # "c":Ljava/util/Calendar;
    .end local v22    # "passwordChanged":Z
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .restart local v17    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :catch_1
    move-exception v18

    #@3e3
    .restart local v18    # "ioe":Ljava/io/IOException;
    move-object/from16 v4, v17

    #@3e5
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_7

    #@3e7
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v18    # "ioe":Ljava/io/IOException;
    :cond_1a
    move-object/from16 v4, v17

    #@3e9
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_6

    #@3eb
    .end local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :cond_1b
    move-object/from16 v4, v17

    #@3ed
    .restart local v4    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    goto/16 :goto_3
.end method

.method private cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V
    .locals 12
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p3, "passpointMatch"    # Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@0
    .prologue
    .line 2614
    invoke-virtual {p2}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@3
    move-result-object v6

    #@4
    .line 2616
    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@7
    move-result-object v5

    #@8
    .line 2617
    .local v5, "scanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v5, :cond_0

    #@a
    .line 2618
    const-string/jumbo v9, "WifiConfigManager"

    #@d
    new-instance v10, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v11, "Could not allocate scan cache for "

    #@15
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v10

    #@19
    iget-object v11, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1b
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v10

    #@1f
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v10

    #@23
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 2619
    return-void

    #@27
    .line 2623
    :cond_0
    iget-object v9, v6, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@29
    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@2c
    move-result-object v4

    #@2d
    .line 2624
    .local v4, "result":Landroid/net/wifi/ScanResult;
    if-eqz v4, :cond_1

    #@2f
    .line 2626
    iget-wide v10, v4, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@31
    iput-wide v10, v6, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    #@33
    .line 2627
    iget v9, v4, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@35
    iput v9, v6, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    #@37
    .line 2628
    iget v9, v4, Landroid/net/wifi/ScanResult;->numConnection:I

    #@39
    iput v9, v6, Landroid/net/wifi/ScanResult;->numConnection:I

    #@3b
    .line 2629
    iget v9, v4, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@3d
    iput v9, v6, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    #@3f
    .line 2632
    :cond_1
    iget-boolean v9, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@41
    if-eqz v9, :cond_2

    #@43
    .line 2635
    const/4 v9, 0x1

    #@44
    iput-boolean v9, v6, Landroid/net/wifi/ScanResult;->untrusted:Z

    #@46
    .line 2638
    :cond_2
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@49
    move-result v9

    #@4a
    const/16 v10, 0xc0

    #@4c
    if-le v9, v10, :cond_5

    #@4e
    .line 2639
    const-wide/16 v2, 0x0

    #@50
    .line 2640
    .local v2, "now_dbg":J
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    #@52
    if-eqz v9, :cond_4

    #@54
    .line 2641
    new-instance v9, Ljava/lang/StringBuilder;

    #@56
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@59
    const-string/jumbo v10, " Will trim config "

    #@5c
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v9

    #@68
    .line 2642
    const-string/jumbo v10, " size "

    #@6b
    .line 2641
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v9

    #@6f
    .line 2642
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@72
    move-result v10

    #@73
    .line 2641
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@7e
    .line 2644
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@81
    move-result-object v9

    #@82
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@85
    move-result-object v8

    #@86
    .local v8, "sd$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@89
    move-result v9

    #@8a
    if-eqz v9, :cond_3

    #@8c
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@8f
    move-result-object v7

    #@90
    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    #@92
    .line 2645
    .local v7, "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    #@94
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@97
    const-string/jumbo v10, "     "

    #@9a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@a1
    move-result-object v10

    #@a2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v9

    #@a6
    const-string/jumbo v10, " "

    #@a9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@b0
    move-result-wide v10

    #@b1
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v9

    #@b9
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@bc
    goto :goto_0

    #@bd
    .line 2647
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@c0
    move-result-wide v2

    #@c1
    .line 2652
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_4
    const/16 v9, 0x80

    #@c3
    invoke-virtual {v5, v9}, Lcom/android/server/wifi/ScanDetailCache;->trim(I)V

    #@c6
    .line 2653
    sget-boolean v9, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    #@c8
    if-eqz v9, :cond_5

    #@ca
    .line 2654
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@cd
    move-result-wide v10

    #@ce
    sub-long v0, v10, v2

    #@d0
    .line 2655
    .local v0, "diff":J
    new-instance v9, Ljava/lang/StringBuilder;

    #@d2
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@d5
    const-string/jumbo v10, " Finished trimming config, time(ns) "

    #@d8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@db
    move-result-object v9

    #@dc
    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@df
    move-result-object v9

    #@e0
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e3
    move-result-object v9

    #@e4
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@e7
    .line 2656
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@ea
    move-result-object v9

    #@eb
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ee
    move-result-object v8

    #@ef
    .restart local v8    # "sd$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@f2
    move-result v9

    #@f3
    if-eqz v9, :cond_5

    #@f5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@f8
    move-result-object v7

    #@f9
    check-cast v7, Lcom/android/server/wifi/ScanDetail;

    #@fb
    .line 2657
    .restart local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    new-instance v9, Ljava/lang/StringBuilder;

    #@fd
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@100
    const-string/jumbo v10, "     "

    #@103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v9

    #@107
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getBSSIDString()Ljava/lang/String;

    #@10a
    move-result-object v10

    #@10b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v9

    #@10f
    const-string/jumbo v10, " "

    #@112
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@115
    move-result-object v9

    #@116
    invoke-virtual {v7}, Lcom/android/server/wifi/ScanDetail;->getSeen()J

    #@119
    move-result-wide v10

    #@11a
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@11d
    move-result-object v9

    #@11e
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@121
    move-result-object v9

    #@122
    invoke-virtual {p0, v9}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@125
    goto :goto_1

    #@126
    .line 2663
    .end local v0    # "diff":J
    .end local v2    # "now_dbg":J
    .end local v7    # "sd":Lcom/android/server/wifi/ScanDetail;
    .end local v8    # "sd$iterator":Ljava/util/Iterator;
    :cond_5
    if-eqz p3, :cond_6

    #@128
    .line 2664
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@12b
    move-result-object v9

    #@12c
    invoke-virtual {v5, p2, p3, v9}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@12f
    .line 2670
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@132
    .line 2612
    return-void

    #@133
    .line 2666
    :cond_6
    invoke-virtual {v5, p2}, Lcom/android/server/wifi/ScanDetailCache;->put(Lcom/android/server/wifi/ScanDetail;)V

    #@136
    goto :goto_2
.end method

.method private cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V
    .locals 7
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2593
    .local p2, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .local p3, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3
    move-result-object v4

    #@4
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7
    move-result-object v2

    #@8
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_3

    #@e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/Map$Entry;

    #@14
    .line 2594
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@1a
    .line 2595
    .local v3, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->HomeProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@1c
    if-eq v3, v4, :cond_1

    #@1e
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->RoamingProvider:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@20
    if-ne v3, v4, :cond_0

    #@22
    .line 2596
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@25
    move-result-object v4

    #@26
    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@28
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;

    #@2b
    move-result-object v0

    #@2c
    .line 2597
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@2e
    .line 2598
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@31
    move-result-object v4

    #@32
    check-cast v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@34
    invoke-direct {p0, v0, p1, v4}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    #@37
    .line 2599
    if-eqz p3, :cond_0

    #@39
    .line 2600
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@3c
    goto :goto_0

    #@3d
    .line 2603
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    #@40
    move-result-object v4

    #@41
    invoke-static {v4}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@44
    move-result-object v5

    #@45
    new-instance v4, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v6, "Failed to find config for \'"

    #@4d
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v6

    #@51
    .line 2604
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@54
    move-result-object v4

    #@55
    check-cast v4, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@57
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@5a
    move-result-object v4

    #@5b
    .line 2603
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v4

    #@5f
    .line 2604
    const-string/jumbo v6, "\'"

    #@62
    .line 2603
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v4

    #@6a
    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    goto :goto_0

    #@6e
    .line 2591
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v3    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_3
    return-void
.end method

.method private static configKey(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 2966
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2967
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v1

    #@8
    return v1
.end method

.method private static createPnoNetworkFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    .locals 3
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "newPriority"    # I

    #@0
    .prologue
    .line 1106
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;-><init>(Ljava/lang/String;)V

    #@7
    .line 1107
    .local v0, "pnoNetwork":Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@9
    iput v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->networkId:I

    #@b
    .line 1108
    iput p1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->priority:I

    #@d
    .line 1109
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1110
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@13
    or-int/lit8 v1, v1, 0x1

    #@15
    int-to-byte v1, v1

    #@16
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@18
    .line 1112
    :cond_0
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@1a
    or-int/lit8 v1, v1, 0x2

    #@1c
    int-to-byte v1, v1

    #@1d
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@1f
    .line 1113
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@21
    or-int/lit8 v1, v1, 0x4

    #@23
    int-to-byte v1, v1

    #@24
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    #@26
    .line 1114
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@28
    const/4 v2, 0x1

    #@29
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 1115
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@31
    or-int/lit8 v1, v1, 0x2

    #@33
    int-to-byte v1, v1

    #@34
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@36
    .line 1122
    :goto_0
    return-object v0

    #@37
    .line 1116
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@39
    const/4 v2, 0x2

    #@3a
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@3d
    move-result v1

    #@3e
    if-nez v1, :cond_2

    #@40
    .line 1117
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@42
    const/4 v2, 0x3

    #@43
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@46
    move-result v1

    #@47
    .line 1116
    if-eqz v1, :cond_3

    #@49
    .line 1118
    :cond_2
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@4b
    or-int/lit8 v1, v1, 0x4

    #@4d
    int-to-byte v1, v1

    #@4e
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@50
    goto :goto_0

    #@51
    .line 1120
    :cond_3
    iget-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@53
    or-int/lit8 v1, v1, 0x1

    #@55
    int-to-byte v1, v1

    #@56
    iput-byte v1, v0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    #@58
    goto :goto_0
.end method

.method private getAllConfiguredNetworks()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 471
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 472
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 473
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    #@1d
    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@20
    .line 474
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 476
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method private static getChecksum(Ljava/lang/String;)Ljava/lang/Long;
    .locals 4
    .param p0, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1170
    new-instance v0, Ljava/util/zip/CRC32;

    #@2
    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    #@5
    .line 1171
    .local v0, "csum":Ljava/util/zip/Checksum;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    #@c
    move-result-object v2

    #@d
    array-length v2, v2

    #@e
    const/4 v3, 0x0

    #@f
    invoke-interface {v0, v1, v3, v2}, Ljava/util/zip/Checksum;->update([BII)V

    #@12
    .line 1172
    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    #@15
    move-result-wide v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method private getCredentialsByConfigKeyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 542
    const-string/jumbo v0, "psk"

    #@3
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method private getSavedNetworks(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x1

    #@1
    .line 445
    new-instance v2, Ljava/util/ArrayList;

    #@3
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 446
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@8
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@b
    move-result-object v4

    #@c
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_2

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1c
    .line 447
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    #@1e
    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@21
    .line 450
    .local v3, "newConfig":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@23
    if-nez v4, :cond_0

    #@25
    .line 457
    if-eqz p1, :cond_1

    #@27
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 458
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2d
    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    #@30
    move-result v4

    #@31
    .line 457
    if-eqz v4, :cond_1

    #@33
    .line 459
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@36
    move-result-object v4

    #@37
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    .line 457
    if-eqz v4, :cond_1

    #@3d
    .line 460
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v4

    #@45
    check-cast v4, Ljava/lang/String;

    #@47
    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@49
    .line 462
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    goto :goto_0

    #@4d
    .line 464
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "newConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-object v2
.end method

.method private isEncryptionEap(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2682
    const-string/jumbo v0, "EAP"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private isEncryptionPsk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2678
    const-string/jumbo v0, "PSK"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private isEncryptionWep(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2674
    const-string/jumbo v0, "WEP"

    #@3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method private localLog(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3035
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 3036
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@6
    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@9
    .line 3034
    :cond_0
    return-void
.end method

.method private localLogAndLogcat(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3041
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@3
    .line 3042
    const-string/jumbo v0, "WifiConfigManager"

    #@6
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@9
    .line 3040
    return-void
.end method

.method private localLogNetwork(Ljava/lang/String;I)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    .line 3046
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 3047
    return-void

    #@5
    .line 3051
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    monitor-enter v2

    #@8
    .line 3052
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@a
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/ConfigurationMap;->getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v0

    #@e
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    monitor-exit v2

    #@f
    .line 3055
    if-eqz v0, :cond_1

    #@11
    .line 3056
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    const-string/jumbo v3, " "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    const-string/jumbo v3, " "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 3057
    const-string/jumbo v3, " status="

    #@39
    .line 3056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    .line 3057
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@3f
    .line 3056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 3058
    const-string/jumbo v3, " key="

    #@46
    .line 3056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    .line 3058
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 3056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@59
    .line 3045
    :goto_0
    return-void

    #@5a
    .line 3051
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v1

    #@5b
    monitor-exit v2

    #@5c
    throw v1

    #@5d
    .line 3060
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@5f
    new-instance v2, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    const-string/jumbo v3, " "

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v2

    #@77
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    #@7a
    goto :goto_0
.end method

.method private logContents(Ljava/lang/String;)V
    .locals 8
    .param p1, "file"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1700
    new-instance v5, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v6, "--- Begin "

    #@8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v5

    #@c
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    const-string/jumbo v6, " ---"

    #@13
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v5

    #@17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v5

    #@1b
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLogAndLogcat(Ljava/lang/String;)V

    #@1e
    .line 1701
    const/4 v3, 0x0

    #@1f
    .line 1703
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    #@21
    new-instance v5, Ljava/io/FileReader;

    #@23
    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    #@26
    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@29
    .line 1704
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    #@2f
    .line 1705
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLogAndLogcat(Ljava/lang/String;)V

    #@32
    .line 1704
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@35
    move-result-object v2

    #@36
    goto :goto_0

    #@37
    .line 1715
    :cond_0
    if-eqz v4, :cond_1

    #@39
    .line 1716
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    #@3c
    :cond_1
    :goto_1
    move-object v3, v4

    #@3d
    .line 1722
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "--- End "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v5

    #@4d
    const-string/jumbo v6, " Contents ---"

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v5

    #@58
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLogAndLogcat(Ljava/lang/String;)V

    #@5b
    .line 1699
    return-void

    #@5c
    .line 1718
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    #@5d
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1

    #@5e
    .line 1710
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    #@5f
    .line 1711
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v6, "Could not read "

    #@67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v5

    #@6f
    const-string/jumbo v6, ", "

    #@72
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v5

    #@7a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v5

    #@7e
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@81
    .line 1712
    const-string/jumbo v5, "WifiConfigManager"

    #@84
    new-instance v6, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v7, "Could not read "

    #@8c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v6

    #@90
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    const-string/jumbo v7, ", "

    #@97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v6

    #@9b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v6

    #@9f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a2
    move-result-object v6

    #@a3
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@a6
    .line 1715
    if-eqz v3, :cond_2

    #@a8
    .line 1716
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    #@ab
    goto :goto_2

    #@ac
    .line 1718
    :catch_2
    move-exception v1

    #@ad
    goto :goto_2

    #@ae
    .line 1707
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    #@af
    .line 1708
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    #@b1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b4
    const-string/jumbo v6, "Could not open "

    #@b7
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v5

    #@bb
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v5

    #@bf
    const-string/jumbo v6, ", "

    #@c2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c5
    move-result-object v5

    #@c6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v5

    #@ca
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@cd
    move-result-object v5

    #@ce
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@d1
    .line 1709
    const-string/jumbo v5, "WifiConfigManager"

    #@d4
    new-instance v6, Ljava/lang/StringBuilder;

    #@d6
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@d9
    const-string/jumbo v7, "Could not open "

    #@dc
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v6

    #@e0
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v6

    #@e4
    const-string/jumbo v7, ", "

    #@e7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v6

    #@eb
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v6

    #@ef
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f2
    move-result-object v6

    #@f3
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@f6
    .line 1715
    if-eqz v3, :cond_2

    #@f8
    .line 1716
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@fb
    goto/16 :goto_2

    #@fd
    .line 1718
    :catch_4
    move-exception v1

    #@fe
    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    #@100
    .line 1713
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@101
    .line 1715
    :goto_5
    if-eqz v3, :cond_3

    #@103
    .line 1716
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    #@106
    .line 1713
    :cond_3
    :goto_6
    throw v5

    #@107
    .line 1718
    :catch_5
    move-exception v1

    #@108
    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_6

    #@109
    .line 1713
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    #@10a
    move-object v3, v4

    #@10b
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v3, "reader":Ljava/io/BufferedReader;
    goto :goto_5

    #@10c
    .line 1707
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    #@10d
    .restart local v0    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    #@10e
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    #@10f
    .line 1710
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_7
    move-exception v1

    #@110
    .restart local v1    # "e":Ljava/io/IOException;
    move-object v3, v4

    #@111
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method private logKernelTime()V
    .locals 10

    #@0
    .prologue
    const-wide/16 v8, 0x3e8

    #@2
    .line 3020
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@5
    move-result-wide v4

    #@6
    const-wide/32 v6, 0xf4240

    #@9
    div-long v2, v4, v6

    #@b
    .line 3021
    .local v2, "kernelTimeMs":J
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    .line 3022
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "kernel time = "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 3023
    div-long v4, v2, v8

    #@19
    .line 3022
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 3024
    const-string/jumbo v4, "."

    #@20
    .line 3022
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    .line 3025
    rem-long v4, v2, v8

    #@26
    .line 3022
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    .line 3026
    const-string/jumbo v4, "\n"

    #@2d
    .line 3022
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 3027
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@37
    .line 3019
    return-void
.end method

.method private matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;
    .locals 16
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "query"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2499
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@3
    move-result-object v9

    #@4
    .line 2501
    .local v9, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    move-object/from16 v0, p0

    #@6
    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@8
    invoke-virtual {v13, v9}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    #@b
    move-result-object v1

    #@c
    .line 2504
    .local v1, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v1, :cond_2

    #@e
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    #@11
    move-result-object v2

    #@12
    .line 2506
    :goto_0
    if-eqz p2, :cond_3

    #@14
    const/4 v11, 0x0

    #@15
    .line 2507
    .local v11, "queried":Z
    :goto_1
    move-object/from16 v0, p0

    #@17
    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@19
    invoke-virtual {v13}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getLoadedSPs()Ljava/util/Map;

    #@1c
    move-result-object v13

    #@1d
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@20
    move-result-object v5

    #@21
    .line 2508
    .local v5, "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    new-instance v8, Ljava/util/HashMap;

    #@23
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    #@26
    move-result v13

    #@27
    invoke-direct {v8, v13}, Ljava/util/HashMap;-><init>(I)V

    #@2a
    .line 2509
    .local v8, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v13

    #@2e
    invoke-static {v13}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@31
    move-result-object v14

    #@32
    new-instance v13, Ljava/lang/StringBuilder;

    #@34
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    #@37
    const-string/jumbo v15, "match nwk "

    #@3a
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v13

    #@3e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wifi/ScanDetail;->toKeyString()Ljava/lang/String;

    #@41
    move-result-object v15

    #@42
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v13

    #@46
    .line 2510
    const-string/jumbo v15, ", anqp "

    #@49
    .line 2509
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v15

    #@4d
    .line 2510
    if-eqz v1, :cond_4

    #@4f
    const-string/jumbo v13, "present"

    #@52
    .line 2509
    :goto_2
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v13

    #@56
    .line 2511
    const-string/jumbo v15, ", query "

    #@59
    .line 2509
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v13

    #@5d
    move/from16 v0, p2

    #@5f
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@62
    move-result-object v13

    #@63
    .line 2511
    const-string/jumbo v15, ", home sps: "

    #@66
    .line 2509
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v13

    #@6a
    .line 2511
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    #@6d
    move-result v15

    #@6e
    .line 2509
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@71
    move-result-object v13

    #@72
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v13

    #@76
    invoke-static {v14, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 2513
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@7c
    move-result-object v4

    #@7d
    .local v4, "homeSP$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@80
    move-result v13

    #@81
    if-eqz v13, :cond_8

    #@83
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@86
    move-result-object v3

    #@87
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@89
    .line 2514
    .local v3, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    move-object/from16 v0, p0

    #@8b
    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    #@8d
    invoke-virtual {v3, v9, v2, v13}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@90
    move-result-object v6

    #@91
    .line 2516
    .local v6, "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    #@94
    move-result-object v13

    #@95
    invoke-static {v13}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@98
    move-result-object v13

    #@99
    new-instance v14, Ljava/lang/StringBuilder;

    #@9b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@9e
    const-string/jumbo v15, " -- "

    #@a1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v14

    #@a5
    .line 2517
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@a8
    move-result-object v15

    #@a9
    .line 2516
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v14

    #@ad
    .line 2517
    const-string/jumbo v15, ": match "

    #@b0
    .line 2516
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v14

    #@b4
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v14

    #@b8
    .line 2517
    const-string/jumbo v15, ", queried "

    #@bb
    .line 2516
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v14

    #@bf
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v14

    #@c3
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v14

    #@c7
    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@ca
    .line 2519
    sget-object v13, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@cc
    if-eq v6, v13, :cond_0

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-boolean v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    #@d2
    if-eqz v13, :cond_1

    #@d4
    :cond_0
    if-eqz v11, :cond_5

    #@d6
    .line 2532
    :cond_1
    :goto_4
    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d9
    goto :goto_3

    #@da
    .line 2504
    .end local v3    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v4    # "homeSP$iterator":Ljava/util/Iterator;
    .end local v5    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v6    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v8    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .end local v11    # "queried":Z
    :cond_2
    const/4 v2, 0x0

    #@db
    .local v2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    goto/16 :goto_0

    #@dd
    .line 2506
    .end local v2    # "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    :cond_3
    const/4 v11, 0x1

    #@de
    .restart local v11    # "queried":Z
    goto/16 :goto_1

    #@e0
    .line 2510
    .restart local v5    # "homeSPs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v8    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_4
    const-string/jumbo v13, "missing"

    #@e3
    goto/16 :goto_2

    #@e5
    .line 2520
    .restart local v3    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v4    # "homeSP$iterator":Ljava/util/Iterator;
    .restart local v6    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    :cond_5
    sget-object v13, Lcom/android/server/wifi/hotspot2/PasspointMatch;->Incomplete:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@e7
    if-ne v6, v13, :cond_7

    #@e9
    const/4 v7, 0x1

    #@ea
    .line 2521
    .local v7, "matchSet":Z
    :goto_5
    move-object/from16 v0, p0

    #@ec
    iget-boolean v10, v0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    #@ee
    .line 2523
    .local v10, "osu":Z
    invoke-static {v9, v7, v10}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildQueryList(Lcom/android/server/wifi/hotspot2/NetworkDetail;ZZ)Ljava/util/List;

    #@f1
    move-result-object v12

    #@f2
    .line 2524
    .local v12, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-virtual {v9, v12}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->queriable(Ljava/util/List;)Z

    #@f5
    move-result v13

    #@f6
    if-eqz v13, :cond_6

    #@f8
    .line 2525
    move-object/from16 v0, p0

    #@fa
    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@fc
    invoke-virtual {v13, v9, v12}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/util/List;

    #@ff
    move-result-object v12

    #@100
    .line 2526
    if-eqz v12, :cond_6

    #@102
    .line 2527
    move-object/from16 v0, p0

    #@104
    iget-object v13, v0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@106
    move-object/from16 v0, p1

    #@108
    invoke-virtual {v13, v0, v12}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;Ljava/util/List;)Z

    #@10b
    .line 2530
    :cond_6
    const/4 v11, 0x1

    #@10c
    goto :goto_4

    #@10d
    .line 2520
    .end local v7    # "matchSet":Z
    .end local v10    # "osu":Z
    .end local v12    # "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_7
    const/4 v7, 0x0

    #@10e
    .restart local v7    # "matchSet":Z
    goto :goto_5

    #@10f
    .line 2534
    .end local v3    # "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v6    # "match":Lcom/android/server/wifi/hotspot2/PasspointMatch;
    .end local v7    # "matchSet":Z
    :cond_8
    return-object v8
.end method

.method private matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;
    .locals 6
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2470
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@4
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->isConfigured()Z

    #@7
    move-result v3

    #@8
    if-nez v3, :cond_2

    #@a
    .line 2471
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableOsuQueries:Z

    #@c
    if-eqz v3, :cond_1

    #@e
    .line 2472
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@11
    move-result-object v1

    #@12
    .line 2474
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    const/4 v3, 0x0

    #@13
    invoke-static {v1, v3, v5}, Lcom/android/server/wifi/anqp/ANQPFactory;->buildQueryList(Lcom/android/server/wifi/hotspot2/NetworkDetail;ZZ)Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    .line 2476
    .local v2, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->queriable(Ljava/util/List;)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 2477
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@1f
    invoke-virtual {v3, v1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/util/List;

    #@22
    move-result-object v2

    #@23
    .line 2478
    if-eqz v2, :cond_0

    #@25
    .line 2479
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@27
    invoke-virtual {v3, p1, v2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->startANQP(Lcom/android/server/wifi/ScanDetail;Ljava/util/List;)Z

    #@2a
    .line 2481
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    #@2d
    move-result-object v3

    #@2e
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@31
    .line 2484
    .end local v1    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .end local v2    # "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :cond_1
    return-object v4

    #@32
    .line 2486
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@35
    move-result-object v1

    #@36
    .line 2487
    .restart local v1    # "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@39
    move-result v3

    #@3a
    if-nez v3, :cond_3

    #@3c
    .line 2488
    return-object v4

    #@3d
    .line 2490
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getANQPElements()Ljava/util/Map;

    #@40
    move-result-object v3

    #@41
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V

    #@44
    .line 2492
    invoke-direct {p0, p1, v5}, Lcom/android/server/wifi/WifiConfigManager;->matchNetwork(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/Map;

    #@47
    move-result-object v0

    #@48
    .line 2493
    .local v0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->getClass()Ljava/lang/Class;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@4f
    move-result-object v3

    #@50
    new-instance v4, Ljava/lang/StringBuilder;

    #@52
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@55
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@58
    move-result-object v5

    #@59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v4

    #@5d
    .line 2494
    const-string/jumbo v5, " pass 1 matches: "

    #@60
    .line 2493
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v4

    #@64
    .line 2494
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->toMatchString(Ljava/util/Map;)Ljava/lang/String;

    #@67
    move-result-object v5

    #@68
    .line 2493
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v4

    #@6c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v4

    #@70
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@73
    .line 2495
    return-object v0
.end method

.method static needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 2
    .param p0, "config"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    .line 3065
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 3066
    .local v0, "client":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 3075
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 3118
    :cond_0
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method private readIpAndProxyConfigurations()V
    .locals 6

    #@0
    .prologue
    .line 1904
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    #@2
    sget-object v5, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    #@4
    invoke-virtual {v4, v5}, Lcom/android/server/net/IpConfigStore;->readIpAndProxyConfigurations(Ljava/lang/String;)Landroid/util/SparseArray;

    #@7
    move-result-object v3

    #@8
    .line 1906
    .local v3, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    if-eqz v3, :cond_0

    #@a
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_1

    #@10
    .line 1908
    :cond_0
    return-void

    #@11
    .line 1911
    :cond_1
    const/4 v1, 0x0

    #@12
    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@15
    move-result v4

    #@16
    if-ge v1, v4, :cond_4

    #@18
    .line 1912
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    #@1b
    move-result v2

    #@1c
    .line 1913
    .local v2, "id":I
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@1e
    invoke-virtual {v4, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyIDForAllUsers(I)Landroid/net/wifi/WifiConfiguration;

    #@21
    move-result-object v0

    #@22
    .line 1916
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@24
    iget-boolean v4, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@26
    if-eqz v4, :cond_3

    #@28
    .line 1917
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v5, "configuration found for missing network, nid="

    #@30
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 1918
    const-string/jumbo v5, ", ignored, networks.size="

    #@3b
    .line 1917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    .line 1918
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    #@42
    move-result v5

    #@43
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@46
    move-result-object v5

    #@47
    .line 1917
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@52
    .line 1911
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@54
    goto :goto_0

    #@55
    .line 1920
    :cond_3
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@58
    move-result-object v4

    #@59
    check-cast v4, Landroid/net/IpConfiguration;

    #@5b
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    #@5e
    goto :goto_1

    #@5f
    .line 1902
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "id":I
    :cond_4
    return-void
.end method

.method private readNetworkHistory(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1828
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    #@2
    .line 1829
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@4
    .line 1830
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@6
    .line 1828
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/wifi/WifiNetworkHistory;->readNetworkHistory(Ljava/util/Map;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    #@9
    .line 1827
    return-void
.end method

.method private readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@3
    move-result-wide v4

    #@4
    .line 1731
    .local v4, "start":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@6
    invoke-virtual {v1, p2}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    #@9
    move-result-object v0

    #@a
    .line 1732
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    #@d
    move-result-wide v2

    #@e
    .line 1734
    .local v2, "end":J
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@10
    if-eqz v1, :cond_0

    #@12
    .line 1735
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v6, "readNetworkVariableFromSupplicantFile configKey=["

    #@1a
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v6, "] key="

    #@25
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    .line 1736
    const-string/jumbo v6, " duration="

    #@30
    .line 1735
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    .line 1736
    sub-long v6, v2, v4

    #@36
    .line 1735
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@39
    move-result-object v1

    #@3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v1

    #@3e
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@41
    .line 1738
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@44
    move-result-object v1

    #@45
    check-cast v1, Ljava/lang/String;

    #@47
    return-object v1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 2920
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    #@5
    .line 2919
    return-void
.end method

.method private readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->readNetworkVariablesFromSupplicantFile(Ljava/lang/String;)Ljava/util/Map;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private removeConfigAndSendBroadcastIfNeeded(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1192
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->removeConfigWithoutBroadcast(Landroid/net/wifi/WifiConfiguration;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1193
    const/4 v1, 0x0

    #@8
    return v1

    #@9
    .line 1195
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    .line 1196
    .local v0, "key":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "removeNetwork  key="

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, " config.id="

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@35
    .line 1199
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeIpAndProxyConfigurations()V

    #@38
    .line 1200
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@3b
    .line 1201
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@3d
    if-nez v1, :cond_2

    #@3f
    .line 1202
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeUserSelectionPreference(Ljava/lang/String;)V

    #@42
    .line 1204
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@45
    .line 1205
    return v3
.end method

.method private removeConfigWithoutBroadcast(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 1176
    if-nez p1, :cond_0

    #@4
    .line 1177
    return v2

    #@5
    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@7
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_1

    #@d
    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v1, "Failed to remove network "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@26
    .line 1181
    return v2

    #@27
    .line 1183
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@2d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v0

    #@31
    if-eqz v0, :cond_2

    #@33
    .line 1184
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@35
    .line 1186
    :cond_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@37
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@39
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/ConfigurationMap;->remove(I)Landroid/net/wifi/WifiConfiguration;

    #@3c
    .line 1187
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@3e
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v1

    #@44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@47
    .line 1188
    const/4 v0, 0x1

    #@48
    return v0
.end method

.method private removeUserSelectionPreference(Ljava/lang/String;)V
    .locals 8
    .param p1, "configKey"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1210
    const-string/jumbo v4, "WifiConfigManager"

    #@4
    new-instance v5, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v6, "removeUserSelectionPreference: key is "

    #@c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v5

    #@14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1b
    .line 1212
    if-nez p1, :cond_0

    #@1d
    .line 1213
    return-void

    #@1e
    .line 1215
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@20
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@23
    move-result-object v4

    #@24
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@27
    move-result-object v1

    #@28
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_2

    #@2e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@34
    .line 1216
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@37
    move-result-object v3

    #@38
    .line 1217
    .local v3, "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@3b
    move-result-object v2

    #@3c
    .line 1218
    .local v2, "connectChoice":Ljava/lang/String;
    if-eqz v2, :cond_1

    #@3e
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v4

    #@42
    if-eqz v4, :cond_1

    #@44
    .line 1219
    const-string/jumbo v4, "WifiConfigManager"

    #@47
    new-instance v5, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v6, "remove connect choice:"

    #@4f
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v5

    #@53
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    const-string/jumbo v6, " from "

    #@5a
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 1220
    const-string/jumbo v6, " : "

    #@67
    .line 1219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 1220
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6d
    .line 1219
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    move-result-object v5

    #@71
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@78
    .line 1221
    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoice(Ljava/lang/String;)V

    #@7b
    .line 1222
    const-wide/16 v4, -0x1

    #@7d
    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setConnectChoiceTimestamp(J)V

    #@80
    goto :goto_0

    #@81
    .line 1208
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "connectChoice":Ljava/lang/String;
    .end local v3    # "status":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    :cond_2
    return-void
.end method

.method private retrievePnoNetworkList(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "pnoListComparator"    # Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1134
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1136
    .local v2, "pnoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;>;"
    new-instance v4, Ljava/util/ArrayList;

    #@7
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@9
    invoke-virtual {v5}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@c
    move-result-object v5

    #@d
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    #@10
    .line 1137
    .local v4, "wifiConfigurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {v4, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    #@13
    .line 1140
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@16
    move-result v3

    #@17
    .line 1141
    .local v3, "priority":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_0

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@27
    .line 1142
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiConfigManager;->createPnoNetworkFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;I)Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@2e
    .line 1143
    add-int/lit8 v3, v3, -0x1

    #@30
    goto :goto_0

    #@31
    .line 1145
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    return-object v2
.end method

.method private sendConfiguredNetworksChangedBroadcast()V
    .locals 3

    #@0
    .prologue
    .line 1646
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1647
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1648
    const-string/jumbo v1, "multipleChanges"

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@14
    .line 1649
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@16
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@18
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@1b
    .line 1645
    return-void
.end method

.method private sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1634
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 1635
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 1636
    const-string/jumbo v1, "multipleChanges"

    #@10
    const/4 v2, 0x0

    #@11
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    #@14
    .line 1637
    const-string/jumbo v1, "wifiConfiguration"

    #@17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    #@1a
    .line 1638
    const-string/jumbo v1, "changeReason"

    #@1d
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@20
    .line 1639
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@22
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@24
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@27
    .line 1633
    return-void
.end method

.method private setNetworkPriorityNative(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkPriority(Landroid/net/wifi/WifiConfiguration;I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private setSSIDNative(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private static toMatchString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/hotspot2/pps/HomeSP;",
            "Lcom/android/server/wifi/hotspot2/PasspointMatch;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    #@0
    .prologue
    .line 2582
    .local p0, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 2583
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@8
    move-result-object v3

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Ljava/util/Map$Entry;

    #@19
    .line 2584
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    const/16 v3, 0x20

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@25
    invoke-virtual {v3}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    const-string/jumbo v4, "->"

    #@30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3b
    goto :goto_0

    #@3c
    .line 2586
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v3

    #@40
    return-object v3
.end method

.method private tryEnableQualifiedNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1413
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@4
    move-result-object v0

    #@5
    .line 1414
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    #@8
    move-result v1

    #@9
    if-eqz v1, :cond_1

    #@b
    .line 1417
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@d
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@10
    move-result-wide v4

    #@11
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    #@14
    move-result-wide v6

    #@15
    sub-long/2addr v4, v6

    #@16
    const-wide/16 v6, 0x3e8

    #@18
    div-long/2addr v4, v6

    #@19
    const-wide/16 v6, 0x3c

    #@1b
    div-long v2, v4, v6

    #@1d
    .line 1418
    .local v2, "timeDifference":J
    const-wide/16 v4, 0x0

    #@1f
    cmp-long v1, v2, v4

    #@21
    if-ltz v1, :cond_0

    #@23
    .line 1419
    sget-object v1, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_TIMEOUT:[I

    #@25
    .line 1420
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    #@28
    move-result v4

    #@29
    .line 1419
    aget v1, v1, v4

    #@2b
    int-to-long v4, v1

    #@2c
    .line 1418
    cmp-long v1, v2, v4

    #@2e
    if-ltz v1, :cond_1

    #@30
    .line 1421
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@32
    invoke-virtual {p0, v1, v8}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@35
    .line 1423
    const/4 v1, 0x1

    #@36
    return v1

    #@37
    .line 1426
    .end local v2    # "timeDifference":J
    :cond_1
    return v8
.end method

.method private updateAnqpCache(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;)V
    .locals 3
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2567
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@3
    move-result-object v1

    #@4
    .line 2569
    .local v1, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    if-nez p2, :cond_1

    #@6
    .line 2571
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@8
    invoke-virtual {v2, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    #@b
    move-result-object v0

    #@c
    .line 2572
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    #@e
    .line 2573
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {p1, v2}, Lcom/android/server/wifi/ScanDetail;->propagateANQPInfo(Ljava/util/Map;)V

    #@15
    .line 2575
    :cond_0
    return-void

    #@16
    .line 2578
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@18
    invoke-virtual {v2, v1, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    #@1b
    .line 2566
    return-void
.end method

.method private wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 2
    .param p1, "originalBitSet"    # Ljava/util/BitSet;
    .param p2, "currentBitSet"    # Ljava/util/BitSet;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2127
    if-eqz p1, :cond_0

    #@3
    if-eqz p2, :cond_0

    #@5
    .line 2129
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_2

    #@b
    .line 2131
    return v1

    #@c
    .line 2133
    :cond_0
    if-nez p1, :cond_1

    #@e
    if-eqz p2, :cond_2

    #@10
    .line 2134
    :cond_1
    return v1

    #@11
    .line 2136
    :cond_2
    const/4 v0, 0x0

    #@12
    return v0
.end method

.method private wasCredentialChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "originalConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2142
    if-nez p1, :cond_0

    #@3
    .line 2143
    return v3

    #@4
    .line 2146
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@6
    .line 2147
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@8
    .line 2146
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    .line 2148
    return v3

    #@f
    .line 2151
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@11
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@13
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 2152
    return v3

    #@1a
    .line 2155
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@1c
    .line 2156
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@1e
    .line 2155
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 2157
    return v3

    #@25
    .line 2160
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@27
    .line 2161
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@29
    .line 2160
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_4

    #@2f
    .line 2162
    return v3

    #@30
    .line 2165
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@32
    .line 2166
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@34
    .line 2165
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasBitSetUpdated(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_5

    #@3a
    .line 2167
    return v3

    #@3b
    .line 2170
    :cond_5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@3d
    if-eqz v1, :cond_8

    #@3f
    iget-object v1, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@41
    if-eqz v1, :cond_8

    #@43
    .line 2171
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@45
    array-length v1, v1

    #@46
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@48
    array-length v2, v2

    #@49
    if-ne v1, v2, :cond_7

    #@4b
    .line 2172
    const/4 v0, 0x0

    #@4c
    .local v0, "i":I
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4e
    array-length v1, v1

    #@4f
    if-ge v0, v1, :cond_8

    #@51
    .line 2173
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@53
    aget-object v1, v1, v0

    #@55
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@57
    aget-object v2, v2, v0

    #@59
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@5c
    move-result v1

    #@5d
    if-nez v1, :cond_6

    #@5f
    .line 2174
    return v3

    #@60
    .line 2172
    :cond_6
    add-int/lit8 v0, v0, 0x1

    #@62
    goto :goto_0

    #@63
    .line 2178
    .end local v0    # "i":I
    :cond_7
    return v3

    #@64
    .line 2182
    :cond_8
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@66
    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@68
    if-eq v1, v2, :cond_9

    #@6a
    .line 2183
    return v3

    #@6b
    .line 2186
    :cond_9
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@6d
    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@6f
    if-eq v1, v2, :cond_a

    #@71
    .line 2187
    return v3

    #@72
    .line 2190
    :cond_a
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@74
    .line 2191
    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@76
    .line 2190
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->wasEnterpriseConfigChange(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;)Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_b

    #@7c
    .line 2192
    return v3

    #@7d
    .line 2194
    :cond_b
    const/4 v1, 0x0

    #@7e
    return v1
.end method

.method private writeIpAndProxyConfigurations()V
    .locals 5

    #@0
    .prologue
    .line 1892
    new-instance v2, Landroid/util/SparseArray;

    #@2
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    #@5
    .line 1893
    .local v2, "networks":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/IpConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_1

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 1894
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1d
    if-nez v3, :cond_0

    #@1f
    .line 1895
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigManager;->configKey(Landroid/net/wifi/WifiConfiguration;)I

    #@22
    move-result v3

    #@23
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@2a
    goto :goto_0

    #@2b
    .line 1899
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mIpconfigStore:Lcom/android/server/net/IpConfigStore;

    #@2d
    sget-object v4, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    #@2f
    invoke-virtual {v3, v4, v2}, Lcom/android/server/net/IpConfigStore;->writeIpAndProxyConfigurations(Ljava/lang/String;Landroid/util/SparseArray;)V

    #@32
    .line 1891
    return-void
.end method

.method private writeIpAndProxyConfigurationsOnChange(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;Z)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 6
    .param p1, "currentConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "newConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "isNewNetwork"    # Z

    #@0
    .prologue
    .line 2833
    const/4 v1, 0x0

    #@1
    .line 2834
    .local v1, "ipChanged":Z
    const/4 v3, 0x0

    #@2
    .line 2836
    .local v3, "proxyChanged":Z
    invoke-static {}, Lcom/android/server/wifi/WifiConfigManager;->-getandroid-net-IpConfiguration$IpAssignmentSwitchesValues()[I

    #@5
    move-result-object v4

    #@6
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@9
    move-result-object v5

    #@a
    invoke-virtual {v5}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    #@d
    move-result v5

    #@e
    aget v4, v4, v5

    #@10
    packed-switch v4, :pswitch_data_0

    #@13
    .line 2855
    const-string/jumbo v4, "Ignore invalid ip assignment during write"

    #@16
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@19
    .line 2859
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigManager;->-getandroid-net-IpConfiguration$ProxySettingsSwitchesValues()[I

    #@1c
    move-result-object v4

    #@1d
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@20
    move-result-object v5

    #@21
    invoke-virtual {v5}, Landroid/net/IpConfiguration$ProxySettings;->ordinal()I

    #@24
    move-result v5

    #@25
    aget v4, v4, v5

    #@27
    packed-switch v4, :pswitch_data_1

    #@2a
    .line 2880
    const-string/jumbo v4, "Ignore invalid proxy configuration during write"

    #@2d
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@30
    .line 2884
    :cond_1
    :goto_1
    :pswitch_1
    if-eqz v1, :cond_2

    #@32
    .line 2885
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    #@39
    .line 2886
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    #@40
    .line 2887
    new-instance v4, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v5, "IP config changed SSID = "

    #@48
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v4

    #@52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@59
    .line 2888
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@5c
    move-result-object v4

    #@5d
    if-eqz v4, :cond_2

    #@5f
    .line 2889
    new-instance v4, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v5, " static configuration: "

    #@67
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v4

    #@6b
    .line 2890
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@6e
    move-result-object v5

    #@6f
    invoke-virtual {v5}, Landroid/net/StaticIpConfiguration;->toString()Ljava/lang/String;

    #@72
    move-result-object v5

    #@73
    .line 2889
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7a
    move-result-object v4

    #@7b
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@7e
    .line 2894
    :cond_2
    if-eqz v3, :cond_3

    #@80
    .line 2895
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    #@87
    .line 2896
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {p1, v4}, Landroid/net/wifi/WifiConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    #@8e
    .line 2897
    new-instance v4, Ljava/lang/StringBuilder;

    #@90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@93
    const-string/jumbo v5, "proxy changed SSID = "

    #@96
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    move-result-object v4

    #@9a
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@9c
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v4

    #@a0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a3
    move-result-object v4

    #@a4
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@a7
    .line 2898
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@aa
    move-result-object v4

    #@ab
    if-eqz v4, :cond_3

    #@ad
    .line 2899
    new-instance v4, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    const-string/jumbo v5, " proxyProperties: "

    #@b5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v4

    #@b9
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@bc
    move-result-object v5

    #@bd
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->toString()Ljava/lang/String;

    #@c0
    move-result-object v5

    #@c1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c4
    move-result-object v4

    #@c5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c8
    move-result-object v4

    #@c9
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@cc
    .line 2903
    :cond_3
    if-nez v1, :cond_4

    #@ce
    if-nez v3, :cond_4

    #@d0
    if-eqz p3, :cond_6

    #@d2
    .line 2904
    :cond_4
    sget-boolean v4, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@d4
    if-eqz v4, :cond_5

    #@d6
    .line 2905
    new-instance v4, Ljava/lang/StringBuilder;

    #@d8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@db
    const-string/jumbo v5, "writeIpAndProxyConfigurationsOnChange: "

    #@de
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v4

    #@e2
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v4

    #@e8
    const-string/jumbo v5, " -> "

    #@eb
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v4

    #@ef
    .line 2906
    iget-object v5, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@f1
    .line 2905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v4

    #@f5
    .line 2906
    const-string/jumbo v5, " path: "

    #@f8
    .line 2905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v4

    #@fc
    .line 2906
    sget-object v5, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    #@fe
    .line 2905
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    move-result-object v4

    #@102
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@105
    move-result-object v4

    #@106
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@109
    .line 2908
    :cond_5
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeIpAndProxyConfigurations()V

    #@10c
    .line 2910
    :cond_6
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    #@10e
    invoke-direct {v4, v1, v3}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(ZZ)V

    #@111
    return-object v4

    #@112
    .line 2838
    :pswitch_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@115
    move-result-object v4

    #@116
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@119
    move-result-object v5

    #@11a
    if-eq v4, v5, :cond_7

    #@11c
    .line 2839
    const/4 v1, 0x1

    #@11d
    goto/16 :goto_0

    #@11f
    .line 2842
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@122
    move-result-object v4

    #@123
    .line 2843
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@126
    move-result-object v5

    #@127
    .line 2841
    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12a
    move-result v4

    #@12b
    if-eqz v4, :cond_8

    #@12d
    const/4 v1, 0x0

    #@12e
    goto/16 :goto_0

    #@130
    :cond_8
    const/4 v1, 0x1

    #@131
    goto/16 :goto_0

    #@133
    .line 2847
    :pswitch_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@136
    move-result-object v4

    #@137
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@13a
    move-result-object v5

    #@13b
    if-eq v4, v5, :cond_0

    #@13d
    .line 2848
    const/4 v1, 0x1

    #@13e
    goto/16 :goto_0

    #@140
    .line 2862
    :pswitch_4
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@143
    move-result-object v2

    #@144
    .line 2863
    .local v2, "newHttpProxy":Landroid/net/ProxyInfo;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@147
    move-result-object v0

    #@148
    .line 2865
    .local v0, "currentHttpProxy":Landroid/net/ProxyInfo;
    if-eqz v2, :cond_a

    #@14a
    .line 2866
    invoke-virtual {v2, v0}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    #@14d
    move-result v4

    #@14e
    if-eqz v4, :cond_9

    #@150
    const/4 v3, 0x0

    #@151
    goto/16 :goto_1

    #@153
    :cond_9
    const/4 v3, 0x1

    #@154
    goto/16 :goto_1

    #@156
    .line 2868
    :cond_a
    if-eqz v0, :cond_b

    #@158
    const/4 v3, 0x1

    #@159
    goto/16 :goto_1

    #@15b
    :cond_b
    const/4 v3, 0x0

    #@15c
    goto/16 :goto_1

    #@15e
    .line 2872
    .end local v0    # "currentHttpProxy":Landroid/net/ProxyInfo;
    .end local v2    # "newHttpProxy":Landroid/net/ProxyInfo;
    :pswitch_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@161
    move-result-object v4

    #@162
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    #@165
    move-result-object v5

    #@166
    if-eq v4, v5, :cond_1

    #@168
    .line 2873
    const/4 v3, 0x1

    #@169
    goto/16 :goto_1

    #@16b
    .line 2836
    nop

    #@16c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    #@176
    .line 2859
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;I)I
    .locals 6
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v5, -0x1

    #@1
    .line 914
    if-eqz p1, :cond_3

    #@3
    .line 915
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    #@5
    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@7
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@a
    move-result-object v3

    #@b
    .line 914
    invoke-static {p1, v3}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_3

    #@11
    .line 919
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@13
    if-eqz v3, :cond_0

    #@15
    const-string/jumbo v3, "addOrUpdateNetwork id="

    #@18
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1a
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@1d
    .line 920
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_1

    #@23
    .line 922
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@25
    invoke-static {v3}, Lcom/android/server/wifi/WifiConfigManager;->getChecksum(Ljava/lang/String;)Ljava/lang/Long;

    #@28
    move-result-object v1

    #@29
    .line 923
    .local v1, "csum":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    iput-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2f
    .line 924
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@31
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@33
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    #@36
    .line 927
    .end local v1    # "csum":Ljava/lang/Long;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@39
    move-result-object v2

    #@3a
    .line 928
    .local v2, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@3d
    move-result v3

    #@3e
    if-eq v3, v5, :cond_2

    #@40
    .line 929
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@42
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@45
    move-result v4

    #@46
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@49
    move-result-object v0

    #@4a
    .line 930
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_2

    #@4c
    .line 933
    iget-boolean v3, v2, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork:Z

    #@4e
    if-eqz v3, :cond_4

    #@50
    .line 934
    const/4 v3, 0x0

    #@51
    .line 931
    :goto_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@54
    .line 939
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {v2}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@57
    move-result v3

    #@58
    return v3

    #@59
    .line 916
    .end local v2    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_3
    return v5

    #@5a
    .line 935
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_4
    const/4 v3, 0x2

    #@5b
    goto :goto_0
.end method

.method public addPasspointManagementObject(Ljava/lang/String;)I
    .locals 2
    .param p1, "managementObject"    # Ljava/lang/String;

    #@0
    .prologue
    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->addSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 945
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 946
    :catch_0
    move-exception v0

    #@8
    .line 947
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method blackListBssid(Ljava/lang/String;)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3278
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->blackListBssid(Ljava/lang/String;)V

    #@5
    .line 3277
    return-void
.end method

.method canModifyNetwork(IIZ)Z
    .locals 12
    .param p1, "uid"    # I
    .param p2, "networkId"    # I
    .param p3, "onlyAnnotate"    # Z

    #@0
    .prologue
    const/4 v11, -0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v8, 0x0

    #@3
    .line 3164
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@5
    invoke-virtual {v9, p2}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v0

    #@9
    .line 3166
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@b
    .line 3167
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v9, "canModifyNetwork: cannot find config networkId "

    #@13
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v7

    #@17
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v7

    #@1b
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {p0, v7}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@22
    .line 3168
    return v8

    #@23
    .line 3172
    :cond_0
    const-class v9, Landroid/app/admin/DevicePolicyManagerInternal;

    #@25
    .line 3171
    invoke-static {v9}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Landroid/app/admin/DevicePolicyManagerInternal;

    #@2b
    .line 3174
    .local v1, "dpmi":Landroid/app/admin/DevicePolicyManagerInternal;
    if-eqz v1, :cond_1

    #@2d
    invoke-virtual {v1, p1, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    #@30
    move-result v5

    #@31
    .line 3177
    .local v5, "isUidDeviceOwner":Z
    :goto_0
    if-eqz v5, :cond_2

    #@33
    .line 3178
    return v7

    #@34
    .end local v5    # "isUidDeviceOwner":Z
    :cond_1
    move v5, v8

    #@35
    .line 3174
    goto :goto_0

    #@36
    .line 3181
    .restart local v5    # "isUidDeviceOwner":Z
    :cond_2
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@38
    if-ne v9, p1, :cond_4

    #@3a
    const/4 v3, 0x1

    #@3b
    .line 3183
    .local v3, "isCreator":Z
    :goto_1
    if-eqz p3, :cond_5

    #@3d
    .line 3184
    if-nez v3, :cond_3

    #@3f
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@42
    move-result v7

    #@43
    :cond_3
    return v7

    #@44
    .line 3181
    .end local v3    # "isCreator":Z
    :cond_4
    const/4 v3, 0x0

    #@45
    .restart local v3    # "isCreator":Z
    goto :goto_1

    #@46
    .line 3189
    :cond_5
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@48
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4b
    move-result-object v9

    #@4c
    const-string/jumbo v10, "android.software.device_admin"

    #@4f
    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    #@52
    move-result v9

    #@53
    if-eqz v9, :cond_6

    #@55
    .line 3190
    if-nez v1, :cond_6

    #@57
    .line 3191
    return v8

    #@58
    .line 3196
    :cond_6
    if-eqz v1, :cond_8

    #@5a
    .line 3197
    iget v9, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@5c
    .line 3196
    invoke-virtual {v1, v9, v11}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    #@5f
    move-result v2

    #@60
    .line 3198
    .local v2, "isConfigEligibleForLockdown":Z
    :goto_2
    if-nez v2, :cond_9

    #@62
    .line 3199
    if-nez v3, :cond_7

    #@64
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@67
    move-result v7

    #@68
    :cond_7
    return v7

    #@69
    .end local v2    # "isConfigEligibleForLockdown":Z
    :cond_8
    move v2, v8

    #@6a
    .line 3196
    goto :goto_2

    #@6b
    .line 3202
    .restart local v2    # "isConfigEligibleForLockdown":Z
    :cond_9
    iget-object v9, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@6d
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@70
    move-result-object v6

    #@71
    .line 3204
    .local v6, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v9, "wifi_device_owner_configs_lockdown"

    #@74
    .line 3203
    invoke-static {v6, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    #@77
    move-result v9

    #@78
    if-eqz v9, :cond_a

    #@7a
    move v4, v7

    #@7b
    .line 3205
    .local v4, "isLockdownFeatureEnabled":Z
    :goto_3
    if-nez v4, :cond_b

    #@7d
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->checkConfigOverridePermission(I)Z

    #@80
    move-result v7

    #@81
    :goto_4
    return v7

    #@82
    .end local v4    # "isLockdownFeatureEnabled":Z
    :cond_a
    move v4, v8

    #@83
    .line 3203
    goto :goto_3

    #@84
    .restart local v4    # "isLockdownFeatureEnabled":Z
    :cond_b
    move v7, v8

    #@85
    .line 3205
    goto :goto_4
.end method

.method canModifyNetwork(ILandroid/net/wifi/WifiConfiguration;Z)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "onlyAnnotate"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 3212
    if-nez p2, :cond_0

    #@3
    .line 3213
    const-string/jumbo v2, "canModifyNetowrk recieved null configuration"

    #@6
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@9
    .line 3214
    return v4

    #@a
    .line 3219
    :cond_0
    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@c
    const/4 v3, -0x1

    #@d
    if-eq v2, v3, :cond_1

    #@f
    .line 3220
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@11
    .line 3231
    .local v0, "netid":I
    :goto_0
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wifi/WifiConfigManager;->canModifyNetwork(IIZ)Z

    #@14
    move-result v2

    #@15
    return v2

    #@16
    .line 3223
    .end local v0    # "netid":I
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@18
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@1f
    move-result-object v1

    #@20
    .line 3224
    .local v1, "test":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_2

    #@22
    .line 3225
    return v4

    #@23
    .line 3227
    :cond_2
    iget v0, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@25
    .restart local v0    # "netid":I
    goto :goto_0
.end method

.method checkConfigOverridePermission(I)Z
    .locals 4
    .param p1, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 3236
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@3
    .line 3237
    const-string/jumbo v3, "android.permission.OVERRIDE_WIFI_CONFIG"

    #@6
    .line 3236
    invoke-virtual {v2, v3, p1}, Lcom/android/server/wifi/FrameworkFacade;->checkUidPermission(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v2

    #@a
    if-nez v2, :cond_0

    #@c
    const/4 v1, 0x1

    #@d
    :cond_0
    return v1

    #@e
    .line 3239
    :catch_0
    move-exception v0

    #@f
    .line 3240
    .local v0, "e":Landroid/os/RemoteException;
    return v1
.end method

.method clearBssidBlacklist()V
    .locals 1

    #@0
    .prologue
    .line 3274
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->clearBssidBlacklist()V

    #@5
    .line 3273
    return-void
.end method

.method disableAllNetworksNative()V
    .locals 2

    #@0
    .prologue
    .line 1330
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableAllNetworks(Ljava/util/Collection;)Z

    #@b
    .line 1329
    return-void
.end method

.method disableEphemeralNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 870
    if-nez p1, :cond_0

    #@3
    .line 871
    return-object v1

    #@4
    .line 874
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getEphemeralForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 876
    .local v0, "foundConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@c
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@f
    .line 877
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "Forget ephemeral SSID "

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const-string/jumbo v2, " num="

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@28
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@37
    .line 879
    if-eqz v0, :cond_1

    #@39
    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v2, "Found ephemeral config in disableEphemeralNetwork: "

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v1

    #@45
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@52
    .line 883
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@55
    .line 884
    return-object v0
.end method

.method disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1339
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method disableNetworkNative(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1323
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->disableNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 2971
    const-string/jumbo v4, "Dump of WifiConfigManager"

    #@3
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 2972
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "mLastPriority "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    iget v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1f
    .line 2973
    const-string/jumbo v4, "Configured networks"

    #@22
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@25
    .line 2974
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getAllConfiguredNetworks()Ljava/util/List;

    #@28
    move-result-object v4

    #@29
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "conf$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@39
    .line 2975
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@3c
    goto :goto_0

    #@3d
    .line 2977
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    #@40
    .line 2978
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    #@42
    if-eqz v4, :cond_1

    #@44
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    #@46
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    #@49
    move-result v4

    #@4a
    if-lez v4, :cond_1

    #@4c
    .line 2979
    const-string/jumbo v4, "LostConfigs: "

    #@4f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@52
    .line 2980
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLostConfigsDbg:Ljava/util/HashSet;

    #@54
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@57
    move-result-object v3

    #@58
    .local v3, "s$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_1

    #@5e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Ljava/lang/String;

    #@64
    .line 2981
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@67
    goto :goto_1

    #@68
    .line 2984
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "s$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@6a
    if-eqz v4, :cond_2

    #@6c
    .line 2985
    const-string/jumbo v4, "WifiConfigManager - Log Begin ----"

    #@6f
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@72
    .line 2986
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLocalLog:Landroid/util/LocalLog;

    #@74
    invoke-virtual {v4, p1, p2, p3}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@77
    .line 2987
    const-string/jumbo v4, "WifiConfigManager - Log End ----"

    #@7a
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7d
    .line 2989
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@7f
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->isConfigured()Z

    #@82
    move-result v4

    #@83
    if-eqz v4, :cond_3

    #@85
    .line 2990
    const-string/jumbo v4, "Begin dump of ANQP Cache"

    #@88
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@8b
    .line 2991
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@8d
    invoke-virtual {v4, p2}, Lcom/android/server/wifi/hotspot2/AnqpCache;->dump(Ljava/io/PrintWriter;)V

    #@90
    .line 2992
    const-string/jumbo v4, "End dump of ANQP Cache"

    #@93
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@96
    .line 2970
    :cond_3
    return-void
.end method

.method enableAllNetworks()V
    .locals 4

    #@0
    .prologue
    .line 640
    const/4 v2, 0x0

    #@1
    .line 642
    .local v2, "networkEnabledStateChanged":Z
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@6
    move-result-object v3

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_1

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@17
    .line 643
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@19
    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1b
    if-nez v3, :cond_0

    #@1d
    .line 644
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@24
    move-result v3

    #@25
    if-nez v3, :cond_0

    #@27
    .line 645
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_0

    #@2d
    .line 646
    const/4 v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 651
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    if-eqz v2, :cond_2

    #@31
    .line 652
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@34
    .line 653
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    #@37
    .line 639
    :cond_2
    return-void
.end method

.method enableNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "disableOthers"    # Z
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1289
    if-nez p1, :cond_0

    #@3
    .line 1290
    return v1

    #@4
    .line 1293
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@7
    .line 1295
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->setLatestUserSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    #@a
    .line 1296
    const/4 v0, 0x1

    #@b
    .line 1297
    .local v0, "ret":Z
    if-eqz p2, :cond_2

    #@d
    .line 1298
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->selectNetworkWithoutBroadcast(I)Z

    #@12
    move-result v0

    #@13
    .line 1299
    .local v0, "ret":Z
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 1300
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v2, "enableNetwork(disableOthers=true, uid="

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    const-string/jumbo v2, ") "

    #@2a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v1

    #@32
    .line 1301
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@34
    .line 1300
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@37
    .line 1303
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@3a
    .line 1304
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@3d
    .line 1305
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    #@40
    .line 1310
    .end local v0    # "ret":Z
    :goto_0
    return v0

    #@41
    .line 1307
    .local v0, "ret":Z
    :cond_2
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@43
    if-eqz v1, :cond_3

    #@45
    const-string/jumbo v1, "enableNetwork(disableOthers=false) "

    #@48
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4a
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@4d
    .line 1308
    :cond_3
    const/4 v1, 0x2

    #@4e
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@51
    goto :goto_0
.end method

.method enableVerboseLogging(I)V
    .locals 3
    .param p1, "verbose"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 409
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableVerboseLogging:Ljava/util/concurrent/atomic/AtomicInteger;

    #@4
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    #@7
    .line 410
    if-lez p1, :cond_0

    #@9
    .line 411
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@b
    .line 412
    iput-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@d
    .line 416
    :goto_0
    if-le p1, v1, :cond_1

    #@f
    .line 417
    sput-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    #@11
    .line 408
    :goto_1
    return-void

    #@12
    .line 414
    :cond_0
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@14
    goto :goto_0

    #@15
    .line 419
    :cond_1
    sput-boolean v2, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    #@17
    goto :goto_1
.end method

.method forgetNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 894
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "forgetNetwork"

    #@7
    invoke-direct {p0, v0, p1}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@a
    .line 895
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    #@d
    move-result v0

    #@e
    if-nez v0, :cond_1

    #@10
    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v1, "Failed to forget network "

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@27
    .line 897
    const/4 v0, 0x0

    #@28
    return v0

    #@29
    .line 899
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@2c
    .line 900
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@2f
    .line 901
    const/4 v0, 0x1

    #@30
    return v0
.end method

.method public getANQPData(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Ljava/util/Map;
    .locals 3
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2538
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@3
    invoke-virtual {v2, p1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    #@6
    move-result-object v0

    #@7
    .line 2539
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    #@c
    move-result-object v1

    #@d
    :cond_0
    return-object v1
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 2997
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->IP_CONFIG_FILE:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method getConfiguredNetworksSize()I
    .locals 1

    #@0
    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->sizeForCurrentUser()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getCurrentUserId()I
    .locals 1

    #@0
    .prologue
    .line 2817
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@2
    return v0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 1

    #@0
    .prologue
    .line 3286
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getHiddenConfiguredNetworkIds()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 512
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/ConfigurationMap;->getHiddenNetworkIdsForCurrentUser()Ljava/util/Set;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getHomeSPForConfig(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2248
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@8
    move-result-object v0

    #@9
    .line 2249
    .local v0, "storedConfig":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_0

    #@11
    .line 2250
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@13
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@18
    move-result-object v1

    #@19
    .line 2249
    :cond_0
    return-object v1
.end method

.method public getLastSelectedConfiguration()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1878
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLastSelectedTimeStamp()J
    .locals 2

    #@0
    .prologue
    .line 1882
    iget-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    #@2
    return-wide v0
.end method

.method getMatchingConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 7
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 519
    if-nez p1, :cond_0

    #@3
    .line 520
    return-object v6

    #@4
    .line 522
    :cond_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    #@9
    move-result-object v5

    #@a
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v3

    #@e
    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v5

    #@12
    if-eqz v5, :cond_2

    #@14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v2

    #@18
    check-cast v2, Ljava/util/Map$Entry;

    #@1a
    .line 523
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Ljava/lang/Integer;

    #@20
    .line 524
    .local v4, "netId":Ljava/lang/Integer;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    #@26
    .line 525
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    #@29
    move-result v5

    #@2a
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@2d
    move-result-object v1

    #@2e
    .line 526
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_1

    #@30
    .line 529
    iget-object v5, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v5}, Lcom/android/server/wifi/ScanDetailCache;->get(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    #@35
    move-result-object v5

    #@36
    if-eqz v5, :cond_1

    #@38
    .line 530
    return-object v1

    #@39
    .line 534
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v4    # "netId":Ljava/lang/Integer;
    :cond_2
    return-object v6
.end method

.method getMaxDhcpRetries()I
    .locals 4

    #@0
    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mFacade:Lcom/android/server/wifi/FrameworkFacade;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@4
    .line 3269
    const-string/jumbo v2, "wifi_max_dhcp_retry_count"

    #@7
    .line 3270
    const/16 v3, 0x9

    #@9
    .line 3268
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/FrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method getMeteredHint(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1622
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1623
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method getPrivilegedSavedNetworks()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->getCredentialsByConfigKeyMap()Ljava/util/Map;

    #@3
    move-result-object v4

    #@4
    .line 495
    .local v4, "pskMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks(Ljava/util/Map;)Ljava/util/List;

    #@7
    move-result-object v2

    #@8
    .line 496
    .local v2, "configurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@b
    move-result-object v1

    #@c
    .local v1, "configuration$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@18
    .line 499
    .local v0, "configuration":Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@1a
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@1c
    invoke-virtual {v5, v6}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getMOTree(Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v5

    #@20
    .line 498
    invoke-virtual {v0, v5}, Landroid/net/wifi/WifiConfiguration;->setPasspointManagementObjectTree(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    goto :goto_0

    #@24
    .line 500
    :catch_0
    move-exception v3

    #@25
    .line 501
    .local v3, "ioe":Ljava/io/IOException;
    const-string/jumbo v5, "WifiConfigManager"

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "Failed to parse MO from "

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@36
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v6

    #@3a
    const-string/jumbo v7, ": "

    #@3d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_0

    #@4d
    .line 504
    .end local v0    # "configuration":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_0
    return-object v2
.end method

.method getProxyProperties(I)Landroid/net/ProxyInfo;
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1596
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    .line 1597
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@9
    .line 1598
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1600
    :cond_0
    return-object v2
.end method

.method getRecentSavedNetworks(IZ)Ljava/util/List;
    .locals 6
    .param p1, "scanResultAgeMs"    # I
    .param p2, "copy"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 557
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 559
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@a
    move-result-object v4

    #@b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v2

    #@f
    .local v2, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_3

    #@15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 560
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v4, v1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1d
    if-nez v4, :cond_0

    #@1f
    .line 568
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@22
    move-result-object v0

    #@23
    .line 569
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v0, :cond_0

    #@25
    .line 572
    int-to-long v4, p1

    #@26
    invoke-virtual {v0, v4, v5}, Lcom/android/server/wifi/ScanDetailCache;->getVisibility(J)Landroid/net/wifi/WifiConfiguration$Visibility;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiConfiguration;->setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    #@2d
    .line 573
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@2f
    if-eqz v4, :cond_0

    #@31
    .line 576
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@33
    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    #@35
    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@37
    if-ne v4, v5, :cond_1

    #@39
    .line 577
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@3b
    iget v4, v4, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    #@3d
    sget v5, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@3f
    if-eq v4, v5, :cond_0

    #@41
    .line 580
    :cond_1
    if-eqz p2, :cond_2

    #@43
    .line 581
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    #@45
    invoke-direct {v4, v1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@48
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4b
    goto :goto_0

    #@4c
    .line 583
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4f
    goto :goto_0

    #@50
    .line 586
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    return-object v3
.end method

.method public getSIMAccessor()Lcom/android/server/wifi/SIMAccessor;
    .locals 1

    #@0
    .prologue
    .line 2543
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    #@2
    return-object v0
.end method

.method public getSavedNetworkFromScanDetail(Lcom/android/server/wifi/ScanDetail;)Ljava/util/List;
    .locals 9
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 2709
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@4
    move-result-object v4

    #@5
    .line 2710
    .local v4, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v4, :cond_0

    #@7
    .line 2711
    return-object v7

    #@8
    .line 2713
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    #@a
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@d
    .line 2714
    .local v3, "savedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v7, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v8, "\""

    #@15
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@1b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v7

    #@1f
    const-string/jumbo v8, "\""

    #@22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 2715
    .local v6, "ssid":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2c
    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@2f
    move-result-object v7

    #@30
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@33
    move-result-object v1

    #@34
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@37
    move-result v7

    #@38
    if-eqz v7, :cond_6

    #@3a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@40
    .line 2716
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@42
    if-eqz v7, :cond_1

    #@44
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@46
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v7

    #@4a
    if-eqz v7, :cond_1

    #@4c
    .line 2720
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v8, "getSavedNetworkFromScanDetail(): try "

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v7

    #@60
    .line 2721
    const-string/jumbo v8, " SSID="

    #@63
    .line 2720
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v7

    #@67
    .line 2721
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@69
    .line 2720
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v7

    #@6d
    .line 2721
    const-string/jumbo v8, " "

    #@70
    .line 2720
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v7

    #@74
    .line 2721
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@76
    .line 2720
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v7

    #@7a
    .line 2721
    const-string/jumbo v8, " "

    #@7d
    .line 2720
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v7

    #@81
    .line 2722
    iget-object v8, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@83
    .line 2720
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v7

    #@87
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v7

    #@8b
    invoke-direct {p0, v7}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@8e
    .line 2724
    iget-object v5, v4, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@90
    .line 2725
    .local v5, "scanResultEncrypt":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@93
    move-result-object v2

    #@94
    .line 2726
    .local v2, "configEncrypt":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    #@97
    move-result v7

    #@98
    if-eqz v7, :cond_2

    #@9a
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    #@9d
    move-result v7

    #@9e
    if-nez v7, :cond_5

    #@a0
    .line 2727
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    #@a3
    move-result v7

    #@a4
    if-eqz v7, :cond_3

    #@a6
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    #@a9
    move-result v7

    #@aa
    .line 2726
    if-nez v7, :cond_5

    #@ac
    .line 2728
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    #@af
    move-result v7

    #@b0
    if-eqz v7, :cond_4

    #@b2
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    #@b5
    move-result v7

    #@b6
    .line 2726
    if-nez v7, :cond_5

    #@b8
    .line 2729
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    #@bb
    move-result v7

    #@bc
    if-eqz v7, :cond_1

    #@be
    invoke-virtual {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    #@c1
    move-result v7

    #@c2
    .line 2726
    if-eqz v7, :cond_1

    #@c4
    .line 2730
    :cond_5
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@c7
    goto/16 :goto_0

    #@c9
    .line 2733
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "configEncrypt":Ljava/lang/String;
    .end local v5    # "scanResultEncrypt":Ljava/lang/String;
    :cond_6
    return-object v3
.end method

.method public getSavedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 485
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworks(Ljava/util/Map;)Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2255
    if-nez p1, :cond_0

    #@3
    return-object v1

    #@4
    .line 2256
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@6
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/server/wifi/ScanDetailCache;

    #@12
    .line 2257
    .local v0, "cache":Lcom/android/server/wifi/ScanDetailCache;
    if-nez v0, :cond_1

    #@14
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@16
    const/4 v2, -0x1

    #@17
    if-eq v1, v2, :cond_1

    #@19
    .line 2258
    new-instance v0, Lcom/android/server/wifi/ScanDetailCache;

    #@1b
    .end local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    invoke-direct {v0, p1}, Lcom/android/server/wifi/ScanDetailCache;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@1e
    .line 2259
    .restart local v0    # "cache":Lcom/android/server/wifi/ScanDetailCache;
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@20
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 2261
    :cond_1
    return-object v0
.end method

.method getStaticIpConfiguration(I)Landroid/net/StaticIpConfiguration;
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1561
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@3
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@6
    move-result-object v0

    #@7
    .line 1562
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@9
    .line 1563
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 1565
    :cond_0
    return-object v2
.end method

.method public getWifiConfigForHomeSP(Lcom/android/server/wifi/hotspot2/pps/HomeSP;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    .line 2240
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Lcom/android/server/wifi/ConfigurationMap;->getByFQDNForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 2241
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@c
    .line 2242
    const-string/jumbo v1, "WifiConfigManager"

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Could not find network for homeSP "

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@2a
    .line 2244
    :cond_0
    return-object v0
.end method

.method public getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 632
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method handleBadNetworkDisconnectReport(ILandroid/net/wifi/WifiInfo;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "info"    # Landroid/net/wifi/WifiInfo;

    #@0
    .prologue
    .line 3249
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 3250
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    .line 3251
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_1

    #@e
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@11
    move-result v1

    #@12
    .line 3252
    const/16 v2, -0x49

    #@14
    .line 3251
    if-gt v1, v2, :cond_1

    #@16
    .line 3264
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@18
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@1b
    move-result-wide v2

    #@1c
    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastUnwantedNetworkDisconnectTimestamp:J

    #@1e
    .line 3247
    return-void

    #@1f
    .line 3253
    :cond_1
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->is5GHz()Z

    #@22
    move-result v1

    #@23
    if-eqz v1, :cond_2

    #@25
    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@28
    move-result v1

    #@29
    .line 3254
    const/16 v2, -0x46

    #@2b
    .line 3253
    if-le v1, v2, :cond_0

    #@2d
    .line 3260
    :cond_2
    const/4 v1, 0x1

    #@2e
    .line 3259
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@31
    goto :goto_0
.end method

.method public handleUserSwitch(I)V
    .locals 8
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 2787
    iput p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@2
    .line 2788
    new-instance v2, Ljava/util/HashSet;

    #@4
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@7
    .line 2789
    .local v2, "ephemeralConfigs":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@9
    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@c
    move-result-object v6

    #@d
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@10
    move-result-object v1

    #@11
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@14
    move-result v6

    #@15
    if-eqz v6, :cond_1

    #@17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1d
    .line 2790
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-boolean v6, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1f
    if-eqz v6, :cond_0

    #@21
    .line 2791
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@24
    goto :goto_0

    #@25
    .line 2794
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    #@28
    move-result v6

    #@29
    if-nez v6, :cond_3

    #@2b
    .line 2795
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2e
    move-result-object v1

    #@2f
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@32
    move-result v6

    #@33
    if-eqz v6, :cond_2

    #@35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@38
    move-result-object v0

    #@39
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@3b
    .line 2796
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeConfigWithoutBroadcast(Landroid/net/wifi/WifiConfiguration;)Z

    #@3e
    goto :goto_1

    #@3f
    .line 2798
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@42
    .line 2799
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@45
    .line 2803
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@47
    iget v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@49
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ConfigurationMap;->handleUserSwitch(I)Ljava/util/List;

    #@4c
    move-result-object v3

    #@4d
    .line 2804
    .local v3, "hiddenConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@50
    move-result-object v5

    #@51
    .local v5, "network$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@54
    move-result v6

    #@55
    if-eqz v6, :cond_4

    #@57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5a
    move-result-object v4

    #@5b
    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    #@5d
    .line 2805
    .local v4, "network":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v4}, Lcom/android/server/wifi/WifiConfigManager;->disableNetworkNative(Landroid/net/wifi/WifiConfiguration;)Z

    #@60
    goto :goto_2

    #@61
    .line 2807
    .end local v4    # "network":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@64
    .line 2813
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    #@67
    .line 2786
    return-void
.end method

.method public isBssidBlacklisted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3282
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->isBssidBlacklisted(Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isCurrentUserProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2821
    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@4
    if-ne p1, v3, :cond_0

    #@6
    .line 2822
    return v1

    #@7
    .line 2824
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    #@9
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    #@c
    move-result-object v0

    #@d
    .line 2825
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    #@f
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@11
    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@13
    if-ne v3, v4, :cond_1

    #@15
    :goto_0
    return v1

    #@16
    :cond_1
    move v1, v2

    #@17
    goto :goto_0
.end method

.method isEphemeral(I)Z
    .locals 2
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1617
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1618
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@a
    :goto_0
    return v1

    #@b
    :cond_0
    const/4 v1, 0x0

    #@c
    goto :goto_0
.end method

.method public isLastSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1886
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1887
    if-eqz p1, :cond_0

    #@6
    .line 1888
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v0

    #@10
    .line 1886
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0
.end method

.method isNetworkConfigured(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 3141
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    const/4 v3, -0x1

    #@5
    if-eq v2, v3, :cond_1

    #@7
    .line 3142
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@9
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@e
    move-result-object v2

    #@f
    if-eqz v2, :cond_0

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    move v0, v1

    #@13
    goto :goto_0

    #@14
    .line 3145
    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@16
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Lcom/android/server/wifi/ConfigurationMap;->getByConfigKeyForCurrentUser(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@1d
    move-result-object v2

    #@1e
    if-eqz v2, :cond_2

    #@20
    :goto_1
    return v0

    #@21
    :cond_2
    move v0, v1

    #@22
    goto :goto_1
.end method

.method public isOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "scan"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 2694
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@2
    .line 2695
    .local v0, "scanResultEncrypt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    #@5
    move-result v1

    #@6
    return v1
.end method

.method public isOpenNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 2699
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 2700
    .local v0, "configEncrypt":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->isOpenNetwork(Ljava/lang/String;)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public isOpenNetwork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "encryption"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2686
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionWep(Ljava/lang/String;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionPsk(Ljava/lang/String;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_1

    #@c
    .line 2690
    :cond_0
    const/4 v0, 0x0

    #@d
    return v0

    #@e
    .line 2687
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->isEncryptionEap(Ljava/lang/String;)Z

    #@11
    move-result v0

    #@12
    if-nez v0, :cond_0

    #@14
    .line 2688
    const/4 v0, 0x1

    #@15
    return v0
.end method

.method public isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 3127
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/WifiConfigStore;->isSimConfig(Landroid/net/wifi/WifiConfiguration;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method isUsingStaticIp(I)Z
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1609
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1610
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    #@b
    move-result-object v1

    #@c
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    #@e
    if-ne v1, v2, :cond_0

    #@10
    .line 1611
    const/4 v1, 0x1

    #@11
    return v1

    #@12
    .line 1613
    :cond_0
    const/4 v1, 0x0

    #@13
    return v1
.end method

.method public linkConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 14
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 2270
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    #@2
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@4
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@7
    move-result-object v1

    #@8
    .line 2269
    invoke-static {p1, v1}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "linkConfiguration: Attempting to link config "

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    .line 2272
    const-string/jumbo v2, " that is not visible to the current user."

    #@25
    .line 2271
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@30
    .line 2273
    return-void

    #@31
    .line 2276
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@34
    move-result-object v1

    #@35
    if-eqz v1, :cond_1

    #@37
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@3e
    move-result v1

    #@3f
    const/4 v2, 0x6

    #@40
    if-le v1, v2, :cond_1

    #@42
    .line 2278
    return-void

    #@43
    .line 2280
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@45
    const/4 v2, 0x1

    #@46
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@49
    move-result v1

    #@4a
    if-nez v1, :cond_2

    #@4c
    .line 2282
    return-void

    #@4d
    .line 2284
    :cond_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4f
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@52
    move-result-object v1

    #@53
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@56
    move-result-object v12

    #@57
    .local v12, "link$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@5a
    move-result v1

    #@5b
    if-eqz v1, :cond_16

    #@5d
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@60
    move-result-object v11

    #@61
    check-cast v11, Landroid/net/wifi/WifiConfiguration;

    #@63
    .line 2285
    .local v11, "link":Landroid/net/wifi/WifiConfiguration;
    const/4 v10, 0x0

    #@64
    .line 2287
    .local v10, "doLink":Z
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@67
    move-result-object v1

    #@68
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@6b
    move-result-object v2

    #@6c
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v1

    #@70
    if-nez v1, :cond_3

    #@72
    .line 2291
    iget-boolean v1, v11, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@74
    if-nez v1, :cond_3

    #@76
    .line 2297
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@78
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@7a
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->equals(Ljava/lang/Object;)Z

    #@7d
    move-result v1

    #@7e
    if-eqz v1, :cond_3

    #@80
    .line 2301
    invoke-virtual {p0, v11}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@83
    move-result-object v13

    #@84
    .line 2302
    .local v13, "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    if-eqz v13, :cond_4

    #@86
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@89
    move-result v1

    #@8a
    const/4 v2, 0x6

    #@8b
    if-gt v1, v2, :cond_3

    #@8d
    .line 2307
    :cond_4
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@8f
    if-eqz v1, :cond_d

    #@91
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@93
    if-eqz v1, :cond_d

    #@95
    .line 2309
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@97
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@99
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9c
    move-result v1

    #@9d
    if-eqz v1, :cond_6

    #@9f
    .line 2310
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@a1
    if-eqz v1, :cond_5

    #@a3
    .line 2311
    new-instance v1, Ljava/lang/StringBuilder;

    #@a5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a8
    const-string/jumbo v2, "linkConfiguration link due to same gw "

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@b1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v1

    #@b5
    .line 2312
    const-string/jumbo v2, " and "

    #@b8
    .line 2311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v1

    #@bc
    .line 2312
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@be
    .line 2311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v1

    #@c2
    .line 2312
    const-string/jumbo v2, " GW "

    #@c5
    .line 2311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v1

    #@c9
    .line 2312
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@cb
    .line 2311
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v1

    #@d3
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@d6
    .line 2314
    :cond_5
    const/4 v10, 0x1

    #@d7
    .line 2341
    :cond_6
    if-eqz v10, :cond_8

    #@d9
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mOnlyLinkSameCredentialConfigurations:Z

    #@db
    if-eqz v1, :cond_8

    #@dd
    .line 2343
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@e0
    move-result-object v1

    #@e1
    const-string/jumbo v2, "psk"

    #@e4
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e7
    move-result-object v7

    #@e8
    .line 2345
    .local v7, "apsk":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@eb
    move-result-object v1

    #@ec
    const-string/jumbo v2, "psk"

    #@ef
    invoke-direct {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkVariableFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@f2
    move-result-object v9

    #@f3
    .line 2346
    .local v9, "bpsk":Ljava/lang/String;
    if-eqz v7, :cond_7

    #@f5
    if-nez v9, :cond_11

    #@f7
    .line 2350
    :cond_7
    const/4 v10, 0x0

    #@f8
    .line 2354
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_8
    :goto_1
    if-eqz v10, :cond_12

    #@fa
    .line 2355
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@fc
    if-eqz v1, :cond_9

    #@fe
    .line 2356
    new-instance v1, Ljava/lang/StringBuilder;

    #@100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@103
    const-string/jumbo v2, "linkConfiguration: will link "

    #@106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@109
    move-result-object v1

    #@10a
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@10d
    move-result-object v2

    #@10e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@111
    move-result-object v1

    #@112
    .line 2357
    const-string/jumbo v2, " and "

    #@115
    .line 2356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@118
    move-result-object v1

    #@119
    .line 2357
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@11c
    move-result-object v2

    #@11d
    .line 2356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@120
    move-result-object v1

    #@121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@124
    move-result-object v1

    #@125
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@128
    .line 2359
    :cond_9
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@12a
    if-nez v1, :cond_a

    #@12c
    .line 2360
    new-instance v1, Ljava/util/HashMap;

    #@12e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@131
    iput-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@133
    .line 2362
    :cond_a
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@135
    if-nez v1, :cond_b

    #@137
    .line 2363
    new-instance v1, Ljava/util/HashMap;

    #@139
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@13c
    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@13e
    .line 2365
    :cond_b
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@140
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@143
    move-result-object v2

    #@144
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@147
    move-result-object v1

    #@148
    if-nez v1, :cond_c

    #@14a
    .line 2366
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@14c
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@14f
    move-result-object v2

    #@150
    const/4 v4, 0x1

    #@151
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@154
    move-result-object v4

    #@155
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@158
    .line 2368
    :cond_c
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@15a
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@15d
    move-result-object v2

    #@15e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@161
    move-result-object v1

    #@162
    if-nez v1, :cond_3

    #@164
    .line 2369
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@166
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@169
    move-result-object v2

    #@16a
    const/4 v4, 0x1

    #@16b
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16e
    move-result-object v4

    #@16f
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@172
    goto/16 :goto_0

    #@174
    .line 2321
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@177
    move-result-object v1

    #@178
    if-eqz v1, :cond_6

    #@17a
    .line 2322
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@17d
    move-result-object v1

    #@17e
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@181
    move-result v1

    #@182
    const/4 v2, 0x6

    #@183
    if-gt v1, v2, :cond_6

    #@185
    .line 2324
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@188
    move-result-object v1

    #@189
    invoke-virtual {v1}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    #@18c
    move-result-object v1

    #@18d
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@190
    move-result-object v6

    #@191
    .local v6, "abssid$iterator":Ljava/util/Iterator;
    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@194
    move-result v1

    #@195
    if-eqz v1, :cond_6

    #@197
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19a
    move-result-object v0

    #@19b
    check-cast v0, Ljava/lang/String;

    #@19d
    .line 2325
    .local v0, "abssid":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/android/server/wifi/ScanDetailCache;->keySet()Ljava/util/Collection;

    #@1a0
    move-result-object v1

    #@1a1
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a4
    move-result-object v8

    #@1a5
    .local v8, "bbssid$iterator":Ljava/util/Iterator;
    :cond_f
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@1a8
    move-result v1

    #@1a9
    if-eqz v1, :cond_e

    #@1ab
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ae
    move-result-object v3

    #@1af
    check-cast v3, Ljava/lang/String;

    #@1b1
    .line 2326
    .local v3, "bbssid":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVVDBG:Z

    #@1b3
    if-eqz v1, :cond_10

    #@1b5
    .line 2327
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ba
    const-string/jumbo v2, "linkConfiguration try to link due to DBDC BSSID match "

    #@1bd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c0
    move-result-object v1

    #@1c1
    .line 2328
    iget-object v2, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1c3
    .line 2327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c6
    move-result-object v1

    #@1c7
    .line 2328
    const-string/jumbo v2, " and "

    #@1ca
    .line 2327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v1

    #@1ce
    .line 2328
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1d0
    .line 2327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d3
    move-result-object v1

    #@1d4
    .line 2328
    const-string/jumbo v2, " bssida "

    #@1d7
    .line 2327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1da
    move-result-object v1

    #@1db
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v1

    #@1df
    .line 2329
    const-string/jumbo v2, " bssidb "

    #@1e2
    .line 2327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e5
    move-result-object v1

    #@1e6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e9
    move-result-object v1

    #@1ea
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ed
    move-result-object v1

    #@1ee
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@1f1
    .line 2331
    :cond_10
    const/4 v1, 0x1

    #@1f2
    const/4 v2, 0x0

    #@1f3
    const/4 v4, 0x0

    #@1f4
    const/16 v5, 0x10

    #@1f6
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    #@1f9
    move-result v1

    #@1fa
    if-eqz v1, :cond_f

    #@1fc
    .line 2334
    const/4 v10, 0x1

    #@1fd
    goto :goto_2

    #@1fe
    .line 2347
    .end local v0    # "abssid":Ljava/lang/String;
    .end local v3    # "bbssid":Ljava/lang/String;
    .end local v6    # "abssid$iterator":Ljava/util/Iterator;
    .end local v8    # "bbssid$iterator":Ljava/util/Iterator;
    .restart local v7    # "apsk":Ljava/lang/String;
    .restart local v9    # "bpsk":Ljava/lang/String;
    :cond_11
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@201
    move-result v1

    #@202
    .line 2346
    if-nez v1, :cond_7

    #@204
    .line 2347
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@207
    move-result v1

    #@208
    .line 2346
    if-nez v1, :cond_7

    #@20a
    .line 2348
    const-string/jumbo v1, "*"

    #@20d
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@210
    move-result v1

    #@211
    .line 2346
    if-nez v1, :cond_7

    #@213
    .line 2348
    const-string/jumbo v1, "Mjkd86jEMGn79KhKll298Uu7-deleted"

    #@216
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@219
    move-result v1

    #@21a
    .line 2346
    if-nez v1, :cond_7

    #@21c
    .line 2349
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@21f
    move-result v1

    #@220
    if-eqz v1, :cond_7

    #@222
    goto/16 :goto_1

    #@224
    .line 2372
    .end local v7    # "apsk":Ljava/lang/String;
    .end local v9    # "bpsk":Ljava/lang/String;
    :cond_12
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@226
    if-eqz v1, :cond_14

    #@228
    .line 2373
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@22a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@22d
    move-result-object v2

    #@22e
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@231
    move-result-object v1

    #@232
    if-eqz v1, :cond_14

    #@234
    .line 2374
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@236
    if-eqz v1, :cond_13

    #@238
    .line 2375
    new-instance v1, Ljava/lang/StringBuilder;

    #@23a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23d
    const-string/jumbo v2, "linkConfiguration: un-link "

    #@240
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@243
    move-result-object v1

    #@244
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@247
    move-result-object v2

    #@248
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    move-result-object v1

    #@24c
    .line 2376
    const-string/jumbo v2, " from "

    #@24f
    .line 2375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@252
    move-result-object v1

    #@253
    .line 2376
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@256
    move-result-object v2

    #@257
    .line 2375
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25a
    move-result-object v1

    #@25b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25e
    move-result-object v1

    #@25f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@262
    .line 2378
    :cond_13
    iget-object v1, v11, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@264
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@267
    move-result-object v2

    #@268
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@26b
    .line 2380
    :cond_14
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@26d
    if-eqz v1, :cond_3

    #@26f
    .line 2381
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@271
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@274
    move-result-object v2

    #@275
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@278
    move-result-object v1

    #@279
    if-eqz v1, :cond_3

    #@27b
    .line 2382
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@27d
    if-eqz v1, :cond_15

    #@27f
    .line 2383
    new-instance v1, Ljava/lang/StringBuilder;

    #@281
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@284
    const-string/jumbo v2, "linkConfiguration: un-link "

    #@287
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28a
    move-result-object v1

    #@28b
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@28e
    move-result-object v2

    #@28f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@292
    move-result-object v1

    #@293
    .line 2384
    const-string/jumbo v2, " from "

    #@296
    .line 2383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@299
    move-result-object v1

    #@29a
    .line 2384
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@29d
    move-result-object v2

    #@29e
    .line 2383
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a1
    move-result-object v1

    #@2a2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a5
    move-result-object v1

    #@2a6
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@2a9
    .line 2386
    :cond_15
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@2ab
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@2ae
    move-result-object v2

    #@2af
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b2
    goto/16 :goto_0

    #@2b4
    .line 2268
    .end local v10    # "doLink":Z
    .end local v11    # "link":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "linkedScanDetailCache":Lcom/android/server/wifi/ScanDetailCache;
    :cond_16
    return-void
.end method

.method loadAndEnableAllNetworks()V
    .locals 1

    #@0
    .prologue
    .line 428
    const-string/jumbo v0, "Loading config and enabling all networks "

    #@3
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@6
    .line 429
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->loadConfiguredNetworks()V

    #@9
    .line 430
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->enableAllNetworks()V

    #@c
    .line 427
    return-void
.end method

.method loadConfiguredNetworks()V
    .locals 8

    #@0
    .prologue
    .line 1654
    new-instance v2, Ljava/util/HashMap;

    #@2
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1655
    .local v2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    new-instance v5, Landroid/util/SparseArray;

    #@7
    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    #@a
    .line 1656
    .local v5, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@c
    invoke-virtual {v6, v2, v5}, Lcom/android/server/wifi/WifiConfigStore;->loadNetworks(Ljava/util/Map;Landroid/util/SparseArray;)I

    #@f
    move-result v6

    #@10
    iput v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@12
    .line 1658
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->readNetworkHistory(Ljava/util/Map;)V

    #@15
    .line 1659
    invoke-virtual {p0, v2, v5}, Lcom/android/server/wifi/WifiConfigManager;->readPasspointConfig(Ljava/util/Map;Landroid/util/SparseArray;)V

    #@18
    .line 1666
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@1a
    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->clear()V

    #@1d
    .line 1667
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@20
    move-result-object v6

    #@21
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@24
    move-result-object v4

    #@25
    .local v4, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@28
    move-result v6

    #@29
    if-eqz v6, :cond_2

    #@2b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2e
    move-result-object v3

    #@2f
    check-cast v3, Ljava/util/Map$Entry;

    #@31
    .line 1668
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Ljava/lang/String;

    #@37
    .line 1669
    .local v1, "configKey":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v0

    #@3b
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@3d
    .line 1670
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@44
    move-result v6

    #@45
    if-nez v6, :cond_1

    #@47
    .line 1671
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@49
    if-eqz v6, :cond_0

    #@4b
    .line 1672
    new-instance v6, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v7, "Ignoring network "

    #@53
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v6

    #@57
    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@59
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v6

    #@5d
    const-string/jumbo v7, " because the configKey loaded "

    #@60
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    .line 1673
    const-string/jumbo v7, "from wpa_supplicant.conf is not valid."

    #@67
    .line 1672
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v6

    #@6b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v6

    #@6f
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->log(Ljava/lang/String;)V

    #@72
    .line 1675
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@74
    invoke-virtual {v6, v0}, Lcom/android/server/wifi/WifiConfigStore;->removeNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@77
    goto :goto_0

    #@78
    .line 1678
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7a
    invoke-virtual {v6, v0}, Lcom/android/server/wifi/ConfigurationMap;->put(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;

    #@7d
    goto :goto_0

    #@7e
    .line 1681
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "configKey":Ljava/lang/String;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->readIpAndProxyConfigurations()V

    #@81
    .line 1683
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast()V

    #@84
    .line 1685
    iget-boolean v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@86
    if-eqz v6, :cond_3

    #@88
    .line 1686
    new-instance v6, Ljava/lang/StringBuilder;

    #@8a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@8d
    const-string/jumbo v7, "loadConfiguredNetworks loaded "

    #@90
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v6

    #@94
    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@96
    invoke-virtual {v7}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    #@99
    move-result v7

    #@9a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v6

    #@9e
    .line 1687
    const-string/jumbo v7, " networks (for all users)"

    #@a1
    .line 1686
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v6

    #@a5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v6

    #@a9
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@ac
    .line 1690
    :cond_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@ae
    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    #@b1
    move-result v6

    #@b2
    if-nez v6, :cond_4

    #@b4
    .line 1692
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigManager;->logKernelTime()V

    #@b7
    .line 1693
    const-string/jumbo v6, "/data/misc/wifi/wpa_supplicant.conf"

    #@ba
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logContents(Ljava/lang/String;)V

    #@bd
    .line 1694
    const-string/jumbo v6, "/data/misc/wifi/wpa_supplicant.conf.tmp"

    #@c0
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logContents(Ljava/lang/String;)V

    #@c3
    .line 1695
    sget-object v6, Lcom/android/server/wifi/WifiNetworkHistory;->NETWORK_HISTORY_CONFIG_FILE:Ljava/lang/String;

    #@c5
    invoke-direct {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logContents(Ljava/lang/String;)V

    #@c8
    .line 1652
    :cond_4
    return-void
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3031
    const-string/jumbo v0, "WifiConfigManager"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 3030
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3001
    const-string/jumbo v0, "WifiConfigManager"

    #@3
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6
    .line 3000
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3005
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;Z)V

    #@4
    .line 3004
    return-void
.end method

.method protected loge(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "stack"    # Z

    #@0
    .prologue
    .line 3009
    if-eqz p2, :cond_0

    #@2
    .line 3010
    const-string/jumbo v0, "WifiConfigManager"

    #@5
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, " stack:"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@1c
    move-result-object v2

    #@1d
    const/4 v3, 0x2

    #@1e
    aget-object v2, v2, v3

    #@20
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 3011
    const-string/jumbo v2, " - "

    #@2b
    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    .line 3011
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@36
    move-result-object v2

    #@37
    const/4 v3, 0x3

    #@38
    aget-object v2, v2, v3

    #@3a
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    .line 3012
    const-string/jumbo v2, " - "

    #@45
    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    .line 3012
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@4c
    move-result-object v2

    #@4d
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@50
    move-result-object v2

    #@51
    const/4 v3, 0x4

    #@52
    aget-object v2, v2, v3

    #@54
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    .line 3013
    const-string/jumbo v2, " - "

    #@5f
    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    .line 3013
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    #@6a
    move-result-object v2

    #@6b
    const/4 v3, 0x5

    #@6c
    aget-object v2, v2, v3

    #@6e
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    #@71
    move-result-object v2

    #@72
    .line 3010
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v1

    #@76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v1

    #@7a
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7d
    .line 3008
    :goto_0
    return-void

    #@7e
    .line 3015
    :cond_0
    const-string/jumbo v0, "WifiConfigManager"

    #@81
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@84
    goto :goto_0
.end method

.method public makeChannelList(Landroid/net/wifi/WifiConfiguration;I)Ljava/util/HashSet;
    .locals 18
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "age"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            "I)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2393
    if-nez p1, :cond_0

    #@2
    .line 2394
    const/4 v14, 0x0

    #@3
    return-object v14

    #@4
    .line 2396
    :cond_0
    move-object/from16 v0, p0

    #@6
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@8
    invoke-virtual {v14}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@b
    move-result-wide v8

    #@c
    .line 2398
    .local v8, "now_ms":J
    new-instance v2, Ljava/util/HashSet;

    #@e
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@11
    .line 2401
    .local v2, "channels":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@14
    move-result-object v14

    #@15
    if-nez v14, :cond_1

    #@17
    move-object/from16 v0, p1

    #@19
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@1b
    if-nez v14, :cond_1

    #@1d
    .line 2402
    const/4 v14, 0x0

    #@1e
    return-object v14

    #@1f
    .line 2405
    :cond_1
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@21
    if-eqz v14, :cond_4

    #@23
    .line 2406
    new-instance v3, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    .line 2407
    .local v3, "dbg":Ljava/lang/StringBuilder;
    const-string/jumbo v14, "makeChannelList age="

    #@2b
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v14

    #@2f
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v15

    #@33
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v14

    #@37
    .line 2408
    const-string/jumbo v15, " for "

    #@3a
    .line 2407
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v14

    #@3e
    .line 2408
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@41
    move-result-object v15

    #@42
    .line 2407
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v14

    #@46
    .line 2409
    const-string/jumbo v15, " max="

    #@49
    .line 2407
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v14

    #@4d
    .line 2409
    move-object/from16 v0, p0

    #@4f
    iget-object v15, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@51
    .line 2407
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@54
    .line 2410
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@57
    move-result-object v14

    #@58
    if-eqz v14, :cond_2

    #@5a
    .line 2411
    const-string/jumbo v14, " bssids="

    #@5d
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v14

    #@61
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@64
    move-result-object v15

    #@65
    invoke-virtual {v15}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@68
    move-result v15

    #@69
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    .line 2413
    :cond_2
    move-object/from16 v0, p1

    #@6e
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@70
    if-eqz v14, :cond_3

    #@72
    .line 2414
    const-string/jumbo v14, " linked="

    #@75
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v14

    #@79
    move-object/from16 v0, p1

    #@7b
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@7d
    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    #@80
    move-result v15

    #@81
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    .line 2416
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@87
    move-result-object v14

    #@88
    move-object/from16 v0, p0

    #@8a
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@8d
    .line 2419
    .end local v3    # "dbg":Ljava/lang/StringBuilder;
    :cond_4
    const/4 v7, 0x0

    #@8e
    .line 2420
    .local v7, "numChannels":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@91
    move-result-object v14

    #@92
    if-eqz v14, :cond_6

    #@94
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@97
    move-result-object v14

    #@98
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@9b
    move-result v14

    #@9c
    if-lez v14, :cond_6

    #@9e
    .line 2421
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@a1
    move-result-object v14

    #@a2
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@a5
    move-result-object v14

    #@a6
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a9
    move-result-object v12

    #@aa
    .local v12, "scanDetail$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@ad
    move-result v14

    #@ae
    if-eqz v14, :cond_6

    #@b0
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b3
    move-result-object v11

    #@b4
    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    #@b6
    .line 2422
    .local v11, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@b9
    move-result-object v10

    #@ba
    .line 2424
    .local v10, "result":Landroid/net/wifi/ScanResult;
    move-object/from16 v0, p0

    #@bc
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@be
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@c1
    move-result v14

    #@c2
    if-le v7, v14, :cond_a

    #@c4
    .line 2440
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_6
    move-object/from16 v0, p1

    #@c6
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@c8
    if-eqz v14, :cond_d

    #@ca
    .line 2441
    move-object/from16 v0, p1

    #@cc
    iget-object v14, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@ce
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@d1
    move-result-object v14

    #@d2
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d5
    move-result-object v5

    #@d6
    .local v5, "key$iterator":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@d9
    move-result v14

    #@da
    if-eqz v14, :cond_d

    #@dc
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@df
    move-result-object v4

    #@e0
    check-cast v4, Ljava/lang/String;

    #@e2
    .line 2442
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@e4
    invoke-virtual {v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    #@e7
    move-result-object v6

    #@e8
    .line 2443
    .local v6, "linked":Landroid/net/wifi/WifiConfiguration;
    if-eqz v6, :cond_7

    #@ea
    .line 2446
    move-object/from16 v0, p0

    #@ec
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@ef
    move-result-object v14

    #@f0
    if-eqz v14, :cond_7

    #@f2
    .line 2449
    move-object/from16 v0, p0

    #@f4
    invoke-virtual {v0, v6}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@f7
    move-result-object v14

    #@f8
    invoke-virtual {v14}, Lcom/android/server/wifi/ScanDetailCache;->values()Ljava/util/Collection;

    #@fb
    move-result-object v14

    #@fc
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@ff
    move-result-object v12

    #@100
    .restart local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    :cond_8
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    #@103
    move-result v14

    #@104
    if-eqz v14, :cond_7

    #@106
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@109
    move-result-object v11

    #@10a
    check-cast v11, Lcom/android/server/wifi/ScanDetail;

    #@10c
    .line 2450
    .restart local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    invoke-virtual {v11}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@10f
    move-result-object v10

    #@110
    .line 2451
    .restart local v10    # "result":Landroid/net/wifi/ScanResult;
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@112
    if-eqz v14, :cond_9

    #@114
    .line 2452
    new-instance v14, Ljava/lang/StringBuilder;

    #@116
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@119
    const-string/jumbo v15, "has link: "

    #@11c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11f
    move-result-object v14

    #@120
    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@122
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v14

    #@126
    .line 2453
    const-string/jumbo v15, " freq="

    #@129
    .line 2452
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v14

    #@12d
    .line 2453
    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@12f
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@132
    move-result-object v15

    #@133
    .line 2452
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    move-result-object v14

    #@137
    .line 2454
    const-string/jumbo v15, " age="

    #@13a
    .line 2452
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v14

    #@13e
    .line 2454
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@140
    move-wide/from16 v16, v0

    #@142
    sub-long v16, v8, v16

    #@144
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@147
    move-result-object v15

    #@148
    .line 2452
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14b
    move-result-object v14

    #@14c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14f
    move-result-object v14

    #@150
    move-object/from16 v0, p0

    #@152
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@155
    .line 2456
    :cond_9
    move-object/from16 v0, p0

    #@157
    iget-object v14, v0, Lcom/android/server/wifi/WifiConfigManager;->mMaxNumActiveChannelsForPartialScans:Ljava/util/concurrent/atomic/AtomicInteger;

    #@159
    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    #@15c
    move-result v14

    #@15d
    if-gt v7, v14, :cond_7

    #@15f
    .line 2459
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@161
    sub-long v14, v8, v14

    #@163
    move/from16 v0, p2

    #@165
    int-to-long v0, v0

    #@166
    move-wide/from16 v16, v0

    #@168
    cmp-long v14, v14, v16

    #@16a
    if-gez v14, :cond_8

    #@16c
    .line 2460
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@16e
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@171
    move-result-object v14

    #@172
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@175
    .line 2461
    add-int/lit8 v7, v7, 0x1

    #@177
    goto :goto_1

    #@178
    .line 2427
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "linked":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    sget-boolean v14, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@17a
    if-eqz v14, :cond_b

    #@17c
    .line 2428
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@17e
    sub-long v14, v8, v14

    #@180
    move/from16 v0, p2

    #@182
    int-to-long v0, v0

    #@183
    move-wide/from16 v16, v0

    #@185
    cmp-long v14, v14, v16

    #@187
    if-gez v14, :cond_c

    #@189
    const/4 v13, 0x1

    #@18a
    .line 2429
    .local v13, "test":Z
    :goto_2
    new-instance v14, Ljava/lang/StringBuilder;

    #@18c
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@18f
    const-string/jumbo v15, "has "

    #@192
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@195
    move-result-object v14

    #@196
    iget-object v15, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@198
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19b
    move-result-object v14

    #@19c
    const-string/jumbo v15, " freq="

    #@19f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    move-result-object v14

    #@1a3
    iget v15, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@1a5
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1a8
    move-result-object v15

    #@1a9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v14

    #@1ad
    .line 2430
    const-string/jumbo v15, " age="

    #@1b0
    .line 2429
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b3
    move-result-object v14

    #@1b4
    .line 2430
    iget-wide v0, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@1b6
    move-wide/from16 v16, v0

    #@1b8
    sub-long v16, v8, v16

    #@1ba
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@1bd
    move-result-object v15

    #@1be
    .line 2429
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c1
    move-result-object v14

    #@1c2
    .line 2430
    const-string/jumbo v15, " ?="

    #@1c5
    .line 2429
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c8
    move-result-object v14

    #@1c9
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@1cc
    move-result-object v14

    #@1cd
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d0
    move-result-object v14

    #@1d1
    move-object/from16 v0, p0

    #@1d3
    invoke-virtual {v0, v14}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@1d6
    .line 2432
    .end local v13    # "test":Z
    :cond_b
    iget-wide v14, v10, Landroid/net/wifi/ScanResult;->seen:J

    #@1d8
    sub-long v14, v8, v14

    #@1da
    move/from16 v0, p2

    #@1dc
    int-to-long v0, v0

    #@1dd
    move-wide/from16 v16, v0

    #@1df
    cmp-long v14, v14, v16

    #@1e1
    if-gez v14, :cond_5

    #@1e3
    .line 2433
    iget v14, v10, Landroid/net/wifi/ScanResult;->frequency:I

    #@1e5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e8
    move-result-object v14

    #@1e9
    invoke-virtual {v2, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    #@1ec
    .line 2434
    add-int/lit8 v7, v7, 0x1

    #@1ee
    goto/16 :goto_0

    #@1f0
    .line 2428
    :cond_c
    const/4 v13, 0x0

    #@1f1
    .restart local v13    # "test":Z
    goto :goto_2

    #@1f2
    .line 2466
    .end local v10    # "result":Landroid/net/wifi/ScanResult;
    .end local v11    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    .end local v12    # "scanDetail$iterator":Ljava/util/Iterator;
    .end local v13    # "test":Z
    :cond_d
    return-object v2
.end method

.method public matchProviderWithCurrentNetwork(Ljava/lang/String;)I
    .locals 6
    .param p1, "fqdn"    # Ljava/lang/String;

    #@0
    .prologue
    .line 964
    const/4 v3, 0x0

    #@1
    .line 965
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetailLock:Ljava/lang/Object;

    #@3
    monitor-enter v4

    #@4
    .line 966
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetail:Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    monitor-exit v4

    #@7
    .line 968
    if-nez v3, :cond_0

    #@9
    .line 969
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@b
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->ordinal()I

    #@e
    move-result v4

    #@f
    return v4

    #@10
    .line 965
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :catchall_0
    move-exception v5

    #@11
    monitor-exit v4

    #@12
    throw v5

    #@13
    .line 971
    .local v3, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@15
    invoke-virtual {v4, p1}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->getHomeSP(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@18
    move-result-object v2

    #@19
    .line 972
    .local v2, "homeSP":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    if-nez v2, :cond_1

    #@1b
    .line 973
    sget-object v4, Lcom/android/server/wifi/hotspot2/PasspointMatch;->None:Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@1d
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->ordinal()I

    #@20
    move-result v4

    #@21
    return v4

    #@22
    .line 976
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@24
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v4, v5}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;

    #@2b
    move-result-object v0

    #@2c
    .line 979
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_2

    #@2e
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->getANQPElements()Ljava/util/Map;

    #@31
    move-result-object v1

    #@32
    .line 981
    :goto_0
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@35
    move-result-object v4

    #@36
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mSIMAccessor:Lcom/android/server/wifi/SIMAccessor;

    #@38
    invoke-virtual {v2, v4, v1, v5}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->match(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;Lcom/android/server/wifi/SIMAccessor;)Lcom/android/server/wifi/hotspot2/PasspointMatch;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/PasspointMatch;->ordinal()I

    #@3f
    move-result v4

    #@40
    return v4

    #@41
    .line 979
    :cond_2
    const/4 v1, 0x0

    #@42
    .local v1, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    goto :goto_0
.end method

.method public modifyPasspointMo(Ljava/lang/String;Ljava/util/List;)I
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/PasspointManagementObjectDefinition;",
            ">;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 953
    .local p2, "mos":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/PasspointManagementObjectDefinition;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@2
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->modifySP(Ljava/lang/String;Ljava/util/Collection;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 954
    :catch_0
    move-exception v0

    #@8
    .line 955
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    #@9
    return v1
.end method

.method needsUnlockedKeyStore()Z
    .locals 4

    #@0
    .prologue
    .line 1747
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@5
    move-result-object v2

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "config$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_1

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@16
    .line 1749
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@18
    const/4 v3, 0x2

    #@19
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_0

    #@1f
    .line 1750
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@21
    const/4 v3, 0x3

    #@22
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    #@25
    move-result v2

    #@26
    .line 1749
    if-eqz v2, :cond_0

    #@28
    .line 1752
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@2a
    invoke-static {v2}, Lcom/android/server/wifi/WifiConfigManager;->needsSoftwareBackedKeyStore(Landroid/net/wifi/WifiEnterpriseConfig;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 1753
    const/4 v2, 0x1

    #@31
    return v2

    #@32
    .line 1758
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const/4 v2, 0x0

    #@33
    return v2
.end method

.method noteRoamingFailure(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 818
    if-nez p1, :cond_0

    #@2
    return-void

    #@3
    .line 819
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@5
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@8
    move-result-wide v0

    #@9
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@b
    .line 821
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@d
    const-wide/16 v2, 0x3e8

    #@f
    add-long/2addr v0, v2

    #@10
    const-wide/16 v2, 0x2

    #@12
    mul-long/2addr v0, v2

    #@13
    .line 820
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@15
    .line 822
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@17
    iget v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkSwitchingBlackListPeriodMs:I

    #@19
    int-to-long v2, v2

    #@1a
    cmp-long v0, v0, v2

    #@1c
    if-lez v0, :cond_1

    #@1e
    .line 823
    iget v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mNetworkSwitchingBlackListPeriodMs:I

    #@20
    int-to-long v0, v0

    #@21
    iput-wide v0, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@23
    .line 825
    :cond_1
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@25
    .line 817
    return-void
.end method

.method public notifyANQPDone(Ljava/lang/Long;Z)V
    .locals 1
    .param p1, "bssid"    # Ljava/lang/Long;
    .param p2, "success"    # Z

    #@0
    .prologue
    .line 2547
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->notifyANQPDone(Ljava/lang/Long;Z)V

    #@5
    .line 2546
    return-void
.end method

.method public notifyIconReceived(Lcom/android/server/wifi/hotspot2/IconEvent;)V
    .locals 6
    .param p1, "iconEvent"    # Lcom/android/server/wifi/hotspot2/IconEvent;

    #@0
    .prologue
    .line 2551
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v2, "android.net.wifi.PASSPOINT_ICON_RECEIVED"

    #@5
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 2552
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    #@a
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@d
    .line 2553
    const-string/jumbo v2, "bssid"

    #@10
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getBSSID()J

    #@13
    move-result-wide v4

    #@14
    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    #@17
    .line 2554
    const-string/jumbo v2, "file"

    #@1a
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/IconEvent;->getFileName()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@21
    .line 2556
    :try_start_0
    const-string/jumbo v2, "icon"

    #@24
    .line 2557
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@26
    invoke-virtual {v3, p1}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->retrieveIcon(Lcom/android/server/wifi/hotspot2/IconEvent;)[B

    #@29
    move-result-object v3

    #@2a
    .line 2556
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 2561
    :goto_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mContext:Landroid/content/Context;

    #@2f
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@31
    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    #@34
    .line 2550
    return-void

    #@35
    .line 2558
    :catch_0
    move-exception v1

    #@36
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0
.end method

.method public queryPasspointIcon(JLjava/lang/String;)Z
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "fileName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mSupplicantBridge:Lcom/android/server/wifi/hotspot2/SupplicantBridge;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/SupplicantBridge;->doIconQuery(JLjava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method readPasspointConfig(Ljava/util/Map;Landroid/util/SparseArray;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1765
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;>;"
    .local p2, "networkExtras":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :try_start_0
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/server/wifi/WifiConfigManager;->mMOManager:Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/omadm/PasspointManagementObjectManager;->loadAllSPs()Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v7

    #@a
    .line 1771
    .local v7, "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    const/4 v15, 0x0

    #@b
    .line 1772
    .local v15, "matchedConfigs":I
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v9

    #@f
    .local v9, "homeSp$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v17

    #@13
    if-eqz v17, :cond_4

    #@15
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v8

    #@19
    check-cast v8, Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@1b
    .line 1773
    .local v8, "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFQDN()Ljava/lang/String;

    #@1e
    move-result-object v6

    #@1f
    .line 1774
    .local v6, "fqdn":Ljava/lang/String;
    const-string/jumbo v17, "WifiConfigManager"

    #@22
    new-instance v18, Ljava/lang/StringBuilder;

    #@24
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v19, "Looking for "

    #@2a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v18

    #@2e
    move-object/from16 v0, v18

    #@30
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v18

    #@34
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v18

    #@38
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    .line 1775
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@3e
    move-result-object v17

    #@3f
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v3

    #@43
    .local v3, "config$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v17

    #@47
    if-eqz v17, :cond_0

    #@49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v2

    #@4d
    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    #@4f
    .line 1776
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    const-string/jumbo v17, "WifiConfigManager"

    #@52
    new-instance v18, Ljava/lang/StringBuilder;

    #@54
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v19, "Testing "

    #@5a
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v18

    #@5e
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@60
    move-object/from16 v19, v0

    #@62
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v18

    #@66
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v18

    #@6a
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@6d
    .line 1778
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@6f
    move-object/from16 v17, v0

    #@71
    if-eqz v17, :cond_1

    #@73
    .line 1782
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@75
    move/from16 v17, v0

    #@77
    move-object/from16 v0, p2

    #@79
    move/from16 v1, v17

    #@7b
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@7e
    move-result-object v17

    #@7f
    check-cast v17, Ljava/util/Map;

    #@81
    const-string/jumbo v18, "fqdn"

    #@84
    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@87
    move-result-object v4

    #@88
    check-cast v4, Ljava/lang/String;

    #@8a
    .line 1783
    .local v4, "configFqdn":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@8c
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8f
    move-result v17

    #@90
    if-eqz v17, :cond_1

    #@92
    .line 1784
    const-string/jumbo v17, "WifiConfigManager"

    #@95
    new-instance v18, Ljava/lang/StringBuilder;

    #@97
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v19, "Matched "

    #@9d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v18

    #@a1
    move-object/from16 v0, v18

    #@a3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v18

    #@a7
    const-string/jumbo v19, " with "

    #@aa
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v18

    #@ae
    iget v0, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b0
    move/from16 v19, v0

    #@b2
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v18

    #@b6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v18

    #@ba
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@bd
    .line 1785
    add-int/lit8 v15, v15, 0x1

    #@bf
    .line 1786
    iput-object v6, v2, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@c1
    .line 1787
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getFriendlyName()Ljava/lang/String;

    #@c4
    move-result-object v17

    #@c5
    move-object/from16 v0, v17

    #@c7
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@c9
    .line 1789
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getRoamingConsortiums()Ljava/util/HashSet;

    #@cc
    move-result-object v16

    #@cd
    .line 1790
    .local v16, "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->size()I

    #@d0
    move-result v17

    #@d1
    move/from16 v0, v17

    #@d3
    new-array v0, v0, [J

    #@d5
    move-object/from16 v17, v0

    #@d7
    move-object/from16 v0, v17

    #@d9
    iput-object v0, v2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@db
    .line 1791
    const/4 v10, 0x0

    #@dc
    .line 1792
    .local v10, "i":I
    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@df
    move-result-object v11

    #@e0
    .local v11, "id$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    #@e3
    move-result v17

    #@e4
    if-eqz v17, :cond_2

    #@e6
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e9
    move-result-object v17

    #@ea
    check-cast v17, Ljava/lang/Long;

    #@ec
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    #@ef
    move-result-wide v12

    #@f0
    .line 1793
    .local v12, "id":J
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@f2
    move-object/from16 v17, v0

    #@f4
    aput-wide v12, v17, v10

    #@f6
    .line 1794
    add-int/lit8 v10, v10, 0x1

    #@f8
    goto :goto_1

    #@f9
    .line 1766
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "config$iterator":Ljava/util/Iterator;
    .end local v4    # "configFqdn":Ljava/lang/String;
    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v7    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .end local v8    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v9    # "homeSp$iterator":Ljava/util/Iterator;
    .end local v10    # "i":I
    .end local v11    # "id$iterator":Ljava/util/Iterator;
    .end local v12    # "id":J
    .end local v15    # "matchedConfigs":I
    .end local v16    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catch_0
    move-exception v5

    #@fa
    .line 1767
    .local v5, "e":Ljava/io/IOException;
    new-instance v17, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v18, "Could not read /data/misc/wifi/PerProviderSubscription.conf : "

    #@102
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v17

    #@106
    move-object/from16 v0, v17

    #@108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v17

    #@10c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v17

    #@110
    move-object/from16 v0, p0

    #@112
    move-object/from16 v1, v17

    #@114
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@117
    .line 1768
    return-void

    #@118
    .line 1796
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "config$iterator":Ljava/util/Iterator;
    .restart local v4    # "configFqdn":Ljava/lang/String;
    .restart local v6    # "fqdn":Ljava/lang/String;
    .restart local v7    # "homeSPs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/pps/HomeSP;>;"
    .restart local v8    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .restart local v9    # "homeSp$iterator":Ljava/util/Iterator;
    .restart local v10    # "i":I
    .restart local v11    # "id$iterator":Ljava/util/Iterator;
    .restart local v15    # "matchedConfigs":I
    .restart local v16    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_2
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@11b
    move-result-object v17

    #@11c
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getImsi()Lcom/android/server/wifi/IMSIParameter;

    #@11f
    move-result-object v14

    #@120
    .line 1797
    .local v14, "imsiParameter":Lcom/android/server/wifi/IMSIParameter;
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@122
    move-object/from16 v18, v0

    #@124
    .line 1798
    if-eqz v14, :cond_3

    #@126
    invoke-virtual {v14}, Lcom/android/server/wifi/IMSIParameter;->toString()Ljava/lang/String;

    #@129
    move-result-object v17

    #@12a
    .line 1797
    :goto_2
    move-object/from16 v0, v18

    #@12c
    move-object/from16 v1, v17

    #@12e
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setPlmn(Ljava/lang/String;)V

    #@131
    .line 1799
    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@133
    move-object/from16 v17, v0

    #@135
    invoke-virtual {v8}, Lcom/android/server/wifi/hotspot2/pps/HomeSP;->getCredential()Lcom/android/server/wifi/hotspot2/pps/Credential;

    #@138
    move-result-object v18

    #@139
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wifi/hotspot2/pps/Credential;->getRealm()Ljava/lang/String;

    #@13c
    move-result-object v18

    #@13d
    invoke-virtual/range {v17 .. v18}, Landroid/net/wifi/WifiEnterpriseConfig;->setRealm(Ljava/lang/String;)V

    #@140
    goto/16 :goto_0

    #@142
    .line 1798
    :cond_3
    const/16 v17, 0x0

    #@144
    goto :goto_2

    #@145
    .line 1804
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "config$iterator":Ljava/util/Iterator;
    .end local v4    # "configFqdn":Ljava/lang/String;
    .end local v6    # "fqdn":Ljava/lang/String;
    .end local v8    # "homeSp":Lcom/android/server/wifi/hotspot2/pps/HomeSP;
    .end local v10    # "i":I
    .end local v11    # "id$iterator":Ljava/util/Iterator;
    .end local v14    # "imsiParameter":Lcom/android/server/wifi/IMSIParameter;
    .end local v16    # "roamingConsortiumIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_4
    const-string/jumbo v17, "WifiConfigManager"

    #@148
    new-instance v18, Ljava/lang/StringBuilder;

    #@14a
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@14d
    const-string/jumbo v19, "loaded "

    #@150
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@153
    move-result-object v18

    #@154
    move-object/from16 v0, v18

    #@156
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@159
    move-result-object v18

    #@15a
    const-string/jumbo v19, " passpoint configs"

    #@15d
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v18

    #@161
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@164
    move-result-object v18

    #@165
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@168
    .line 1762
    return-void
.end method

.method removeNetwork(I)Z
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1158
    iget-boolean v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const-string/jumbo v1, "removeNetwork"

    #@7
    invoke-direct {p0, v1, p1}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@a
    .line 1159
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@c
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@f
    move-result-object v0

    #@10
    .line 1160
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->removeConfigAndSendBroadcastIfNeeded(Landroid/net/wifi/WifiConfiguration;)Z

    #@13
    move-result v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 1161
    const/4 v1, 0x0

    #@17
    return v1

    #@18
    .line 1163
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 1164
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiConfigManager;->writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V

    #@24
    .line 1166
    :cond_2
    const/4 v1, 0x1

    #@25
    return v1
.end method

.method removeNetworksForApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1235
    if-eqz p1, :cond_0

    #@3
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@5
    if-nez v4, :cond_1

    #@7
    .line 1236
    :cond_0
    return v3

    #@8
    .line 1239
    :cond_1
    const/4 v2, 0x1

    #@9
    .line 1242
    .local v2, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@b
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@e
    move-result-object v4

    #@f
    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    #@11
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    #@17
    .line 1243
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    #@18
    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_4

    #@1a
    aget-object v0, v1, v3

    #@1c
    .line 1244
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1e
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@20
    if-ne v5, v6, :cond_3

    #@22
    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@24
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@26
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@29
    move-result v5

    #@2a
    if-eqz v5, :cond_3

    #@2c
    .line 1247
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@2e
    if-eqz v5, :cond_2

    #@30
    .line 1248
    new-instance v5, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    const-string/jumbo v6, "Removing network "

    #@38
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v5

    #@3c
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 1249
    const-string/jumbo v6, ", application \""

    #@45
    .line 1248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    .line 1249
    iget-object v6, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@4b
    .line 1248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 1249
    const-string/jumbo v6, "\" uninstalled"

    #@52
    .line 1248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 1250
    const-string/jumbo v6, " from user "

    #@59
    .line 1248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 1250
    iget v6, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@5f
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    #@62
    move-result v6

    #@63
    .line 1248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6a
    move-result-object v5

    #@6b
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@6e
    .line 1252
    :cond_2
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@70
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    #@73
    move-result v5

    #@74
    and-int/2addr v2, v5

    #@75
    .line 1243
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@77
    goto :goto_0

    #@78
    .line 1255
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@7b
    .line 1257
    return v2
.end method

.method removeNetworksForUser(I)Z
    .locals 7
    .param p1, "userId"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1261
    const/4 v2, 0x1

    #@2
    .line 1264
    .local v2, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v4}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    #@7
    move-result-object v4

    #@8
    new-array v5, v3, [Landroid/net/wifi/WifiConfiguration;

    #@a
    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, [Landroid/net/wifi/WifiConfiguration;

    #@10
    .line 1265
    .local v1, "copiedConfigs":[Landroid/net/wifi/WifiConfiguration;
    array-length v4, v1

    #@11
    .end local v2    # "success":Z
    :goto_0
    if-ge v3, v4, :cond_2

    #@13
    aget-object v0, v1, v3

    #@15
    .line 1266
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@17
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    #@1a
    move-result v5

    #@1b
    if-eq p1, v5, :cond_1

    #@1d
    .line 1265
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 1269
    :cond_1
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@22
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->removeNetwork(I)Z

    #@25
    move-result v5

    #@26
    and-int/2addr v2, v5

    #@27
    .line 1270
    .local v2, "success":Z
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mShowNetworks:Z

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 1271
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Removing network "

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@39
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 1272
    const-string/jumbo v6, ", user "

    #@40
    .line 1271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v5

    #@44
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@47
    move-result-object v5

    #@48
    .line 1272
    const-string/jumbo v6, " removed"

    #@4b
    .line 1271
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@56
    goto :goto_1

    #@57
    .line 1276
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "success":Z
    :cond_2
    return v2
.end method

.method public resetSimNetworks()V
    .locals 2

    #@0
    .prologue
    .line 3134
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/wifi/WifiConfigStore;->resetSimNetworks(Ljava/util/Collection;)V

    #@b
    .line 3133
    return-void
.end method

.method public retrieveConnectedPnoNetworkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1095
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->sConnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->retrievePnoNetworkList(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public retrieveDisconnectedPnoNetworkList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1063
    sget-object v0, Lcom/android/server/wifi/WifiConfigManager;->sDisconnectedPnoListComparator:Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;

    #@2
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->retrievePnoNetworkList(Lcom/android/server/wifi/WifiConfigManager$PnoListComparator;)Ljava/util/ArrayList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method saveConfig()Z
    .locals 1

    #@0
    .prologue
    .line 1523
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore;->saveConfig()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method saveNetwork(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;
    .locals 8
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v7, -0x1

    #@2
    .line 759
    if-eqz p1, :cond_0

    #@4
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@6
    if-ne v5, v7, :cond_1

    #@8
    iget-object v5, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a
    if-nez v5, :cond_1

    #@c
    .line 760
    :cond_0
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    #@e
    invoke-direct {v4, v7}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@11
    return-object v4

    #@12
    .line 764
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    #@14
    iget v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@16
    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@19
    move-result-object v5

    #@1a
    .line 763
    invoke-static {p1, v5}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@1d
    move-result v5

    #@1e
    if-nez v5, :cond_2

    #@20
    .line 765
    new-instance v4, Lcom/android/server/wifi/NetworkUpdateResult;

    #@22
    invoke-direct {v4, v7}, Lcom/android/server/wifi/NetworkUpdateResult;-><init>(I)V

    #@25
    return-object v4

    #@26
    .line 768
    :cond_2
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@28
    if-eqz v5, :cond_3

    #@2a
    const-string/jumbo v5, "WifiConfigManager: saveNetwork netId"

    #@2d
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2f
    invoke-direct {p0, v5, v6}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@32
    .line 769
    :cond_3
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@34
    if-eqz v5, :cond_4

    #@36
    .line 770
    new-instance v5, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v6, "WifiConfigManager saveNetwork, size="

    #@3e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    .line 771
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@44
    invoke-virtual {v6}, Lcom/android/server/wifi/ConfigurationMap;->sizeForAllUsers()I

    #@47
    move-result v6

    #@48
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@4b
    move-result-object v6

    #@4c
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v5

    #@50
    .line 772
    const-string/jumbo v6, " (for all users)"

    #@53
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v5

    #@57
    .line 773
    const-string/jumbo v6, " SSID="

    #@5a
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v5

    #@5e
    .line 773
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@60
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v5

    #@64
    .line 774
    const-string/jumbo v6, " Uid="

    #@67
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    .line 774
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@6d
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v5

    #@75
    .line 775
    const-string/jumbo v6, "/"

    #@78
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v5

    #@7c
    .line 775
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@7e
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@81
    move-result-object v6

    #@82
    .line 770
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v5

    #@86
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@89
    move-result-object v5

    #@8a
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@8d
    .line 778
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@8f
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@91
    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@94
    move-result v5

    #@95
    if-eqz v5, :cond_5

    #@97
    .line 779
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@99
    if-eqz v5, :cond_5

    #@9b
    .line 780
    new-instance v5, Ljava/lang/StringBuilder;

    #@9d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@a0
    const-string/jumbo v6, "WifiConfigManager: removed from ephemeral blacklist: "

    #@a3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v5

    #@a7
    iget-object v6, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@a9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v5

    #@ad
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b0
    move-result-object v5

    #@b1
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@b4
    .line 786
    :cond_5
    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b6
    if-ne v5, v7, :cond_a

    #@b8
    const/4 v2, 0x1

    #@b9
    .line 787
    .local v2, "newNetwork":Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->addOrUpdateNetworkNative(Landroid/net/wifi/WifiConfiguration;I)Lcom/android/server/wifi/NetworkUpdateResult;

    #@bc
    move-result-object v3

    #@bd
    .line 788
    .local v3, "result":Lcom/android/server/wifi/NetworkUpdateResult;
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->getNetworkId()I

    #@c0
    move-result v1

    #@c1
    .line 790
    .local v1, "netId":I
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@c3
    if-eqz v5, :cond_6

    #@c5
    const-string/jumbo v5, "WifiConfigManager: saveNetwork got it back netId="

    #@c8
    invoke-direct {p0, v5, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@cb
    .line 792
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@cd
    invoke-virtual {v5, v1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@d0
    move-result-object v0

    #@d1
    .line 793
    .local v0, "conf":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_9

    #@d3
    .line 794
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@d6
    move-result-object v5

    #@d7
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@da
    move-result v5

    #@db
    if-nez v5, :cond_8

    #@dd
    .line 795
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@df
    if-eqz v5, :cond_7

    #@e1
    new-instance v5, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    const-string/jumbo v6, "WifiConfigManager: re-enabling: "

    #@e9
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ec
    move-result-object v5

    #@ed
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@ef
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v5

    #@f3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v5

    #@f7
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@fa
    .line 798
    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@fd
    .line 801
    :cond_8
    sget-boolean v5, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@ff
    if-eqz v5, :cond_9

    #@101
    .line 802
    new-instance v5, Ljava/lang/StringBuilder;

    #@103
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v6, "WifiConfigManager: saveNetwork got config back netId="

    #@109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v5

    #@10d
    .line 803
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@110
    move-result-object v6

    #@111
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v5

    #@115
    .line 804
    const-string/jumbo v6, " uid="

    #@118
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v5

    #@11c
    .line 804
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@11e
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@121
    move-result-object v6

    #@122
    .line 802
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@125
    move-result-object v5

    #@126
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@129
    move-result-object v5

    #@12a
    invoke-virtual {p0, v5}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@12d
    .line 808
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@130
    .line 811
    invoke-virtual {v3}, Lcom/android/server/wifi/NetworkUpdateResult;->isNewNetwork()Z

    #@133
    move-result v5

    #@134
    if-eqz v5, :cond_b

    #@136
    .line 809
    :goto_1
    invoke-direct {p0, v0, v4}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@139
    .line 814
    return-object v3

    #@13a
    .line 786
    .end local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "netId":I
    .end local v2    # "newNetwork":Z
    .end local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_a
    const/4 v2, 0x0

    #@13b
    .restart local v2    # "newNetwork":Z
    goto/16 :goto_0

    #@13d
    .line 813
    .restart local v0    # "conf":Landroid/net/wifi/WifiConfiguration;
    .restart local v1    # "netId":I
    .restart local v3    # "result":Lcom/android/server/wifi/NetworkUpdateResult;
    :cond_b
    const/4 v4, 0x2

    #@13e
    goto :goto_1
.end method

.method saveWifiConfigBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "bssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore;->setNetworkBSSID(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@5
    .line 828
    return-void
.end method

.method selectNetwork(Landroid/net/wifi/WifiConfiguration;ZI)Z
    .locals 7
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "updatePriorities"    # Z
    .param p3, "uid"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 689
    sget-boolean v3, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@4
    if-eqz v3, :cond_0

    #@6
    const-string/jumbo v3, "selectNetwork"

    #@9
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@b
    invoke-direct {p0, v3, v4}, Lcom/android/server/wifi/WifiConfigManager;->localLogNetwork(Ljava/lang/String;I)V

    #@e
    .line 690
    :cond_0
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@10
    if-ne v3, v6, :cond_1

    #@12
    return v5

    #@13
    .line 692
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mUserManager:Landroid/os/UserManager;

    #@15
    iget v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mCurrentUserId:I

    #@17
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@1a
    move-result-object v3

    #@1b
    .line 691
    invoke-static {p1, v3}, Lcom/android/server/wifi/WifiConfigurationUtil;->isVisibleToAnyProfile(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)Z

    #@1e
    move-result v3

    #@1f
    if-nez v3, :cond_2

    #@21
    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "selectNetwork "

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@2f
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    const-string/jumbo v4, ": Network config is not "

    #@3a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v3

    #@3e
    .line 694
    const-string/jumbo v4, "visible to current user."

    #@41
    .line 693
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v3

    #@45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v3

    #@49
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@4c
    .line 695
    return v5

    #@4d
    .line 699
    :cond_2
    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@4f
    if-eq v3, v6, :cond_3

    #@51
    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@53
    const v4, 0xf4240

    #@56
    if-le v3, v4, :cond_6

    #@58
    .line 700
    :cond_3
    if-eqz p2, :cond_5

    #@5a
    .line 701
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@5c
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@5f
    move-result-object v3

    #@60
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@63
    move-result-object v1

    #@64
    .local v1, "config2$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@67
    move-result v3

    #@68
    if-eqz v3, :cond_5

    #@6a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@6d
    move-result-object v0

    #@6e
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@70
    .line 702
    .local v0, "config2":Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@72
    if-eq v3, v6, :cond_4

    #@74
    .line 703
    invoke-direct {p0, v0, v5}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkPriorityNative(Landroid/net/wifi/WifiConfiguration;I)Z

    #@77
    goto :goto_0

    #@78
    .line 707
    .end local v0    # "config2":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "config2$iterator":Ljava/util/Iterator;
    :cond_5
    iput v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@7a
    .line 711
    :cond_6
    if-eqz p2, :cond_7

    #@7c
    .line 712
    iget v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@7e
    add-int/lit8 v3, v3, 0x1

    #@80
    iput v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastPriority:I

    #@82
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setNetworkPriorityNative(Landroid/net/wifi/WifiConfiguration;I)Z

    #@85
    .line 715
    :cond_7
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@88
    move-result v3

    #@89
    if-eqz v3, :cond_8

    #@8b
    .line 717
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@8e
    move-result-object v3

    #@8f
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetailCache;->size()I

    #@92
    move-result v3

    #@93
    if-eqz v3, :cond_b

    #@95
    .line 718
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@98
    move-result-object v3

    #@99
    invoke-virtual {v3}, Lcom/android/server/wifi/ScanDetailCache;->getFirst()Lcom/android/server/wifi/ScanDetail;

    #@9c
    move-result-object v2

    #@9d
    .line 719
    .local v2, "result":Lcom/android/server/wifi/ScanDetail;
    if-nez v2, :cond_a

    #@9f
    .line 720
    new-instance v3, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v4, "Could not find scan result for "

    #@a7
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v3

    #@ab
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@ad
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v3

    #@b1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@b8
    .line 731
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@ba
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    #@bd
    move-result v4

    #@be
    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiConfigStore;->enableHS20(Z)V

    #@c1
    .line 733
    if-eqz p2, :cond_9

    #@c3
    .line 734
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->saveConfig()Z

    #@c6
    .line 737
    :cond_9
    invoke-virtual {p0, p1, p3}, Lcom/android/server/wifi/WifiConfigManager;->updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z

    #@c9
    .line 739
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiConfigManager;->writeKnownNetworkHistory()V

    #@cc
    .line 742
    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@ce
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->selectNetworkWithoutBroadcast(I)Z

    #@d1
    .line 746
    const/4 v3, 0x1

    #@d2
    return v3

    #@d3
    .line 722
    .restart local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    #@d5
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d8
    const-string/jumbo v4, "Setting SSID for "

    #@db
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v3

    #@df
    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@e1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v3

    #@e5
    const-string/jumbo v4, " to"

    #@e8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v3

    #@ec
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@ef
    move-result-object v4

    #@f0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v3

    #@f4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f7
    move-result-object v3

    #@f8
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@fb
    .line 723
    invoke-virtual {v2}, Lcom/android/server/wifi/ScanDetail;->getSSID()Ljava/lang/String;

    #@fe
    move-result-object v3

    #@ff
    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->setSSIDNative(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Z

    #@102
    goto :goto_1

    #@103
    .line 727
    .end local v2    # "result":Lcom/android/server/wifi/ScanDetail;
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v4, "Could not find bssid for "

    #@10b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v3

    #@10f
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v3

    #@113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v3

    #@117
    invoke-virtual {p0, v3}, Lcom/android/server/wifi/WifiConfigManager;->loge(Ljava/lang/String;)V

    #@11a
    goto :goto_1
.end method

.method selectNetworkWithoutBroadcast(I)Z
    .locals 3
    .param p1, "netId"    # I

    #@0
    .prologue
    .line 1314
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    .line 1315
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v1

    #@8
    .line 1316
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@a
    invoke-virtual {v2}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@d
    move-result-object v2

    #@e
    .line 1314
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wifi/WifiConfigStore;->selectNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/util/Collection;)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public setActiveScanDetail(Lcom/android/server/wifi/ScanDetail;)V
    .locals 2
    .param p1, "activeScanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    .line 3294
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetailLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 3295
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigManager;->mActiveScanDetail:Lcom/android/server/wifi/ScanDetail;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    monitor-exit v0

    #@6
    .line 3293
    return-void

    #@7
    .line 3294
    :catchall_0
    move-exception v1

    #@8
    monitor-exit v0

    #@9
    throw v1
.end method

.method public setAndEnableLastSelectedConfiguration(I)V
    .locals 6
    .param p1, "netId"    # I

    #@0
    .prologue
    const-wide/16 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 1847
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 1848
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "setLastSelectedConfiguration "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@22
    .line 1850
    :cond_0
    const/4 v1, -0x1

    #@23
    if-ne p1, v1, :cond_2

    #@25
    .line 1851
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@27
    .line 1852
    iput-wide v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    #@29
    .line 1846
    :cond_1
    :goto_0
    return-void

    #@2a
    .line 1854
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@2d
    move-result-object v0

    #@2e
    .line 1855
    .local v0, "selected":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    #@30
    .line 1856
    iput-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@32
    .line 1857
    iput-wide v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    #@34
    goto :goto_0

    #@35
    .line 1859
    :cond_3
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    iput-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@3b
    .line 1860
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@3d
    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@40
    move-result-wide v2

    #@41
    iput-wide v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    #@43
    .line 1862
    const/4 v1, 0x0

    #@44
    .line 1861
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@47
    .line 1863
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@49
    if-eqz v1, :cond_1

    #@4b
    .line 1864
    new-instance v1, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v2, "setLastSelectedConfiguration now: "

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@60
    move-result-object v1

    #@61
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@64
    goto :goto_0
.end method

.method setDefaultGwMacAddress(ILjava/lang/String;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "macAddress"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1582
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1583
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    .line 1585
    iput-object p2, v0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@a
    .line 1581
    :cond_0
    return-void
.end method

.method public setEnableAutoJoinWhenAssociated(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    #@0
    .prologue
    .line 3290
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mEnableAutoJoinWhenAssociated:Ljava/util/concurrent/atomic/AtomicBoolean;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@5
    .line 3289
    return-void
.end method

.method public setLatestUserSelectedConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "network"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1871
    if-eqz p1, :cond_0

    #@2
    .line 1872
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedConfiguration:Ljava/lang/String;

    #@8
    .line 1873
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@a
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mLastSelectedTimeStamp:J

    #@10
    .line 1870
    :cond_0
    return-void
.end method

.method setStaticIpConfiguration(ILandroid/net/StaticIpConfiguration;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 1572
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@2
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForCurrentUser(I)Landroid/net/wifi/WifiConfiguration;

    #@5
    move-result-object v0

    #@6
    .line 1573
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@8
    .line 1574
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    #@b
    .line 1571
    :cond_0
    return-void
.end method

.method startWpsPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 1553
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    .line 1554
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    .line 1553
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsPbc(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    .line 1534
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    .line 1533
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromAccessPoint(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;

    #@0
    .prologue
    .line 1543
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiConfigStore:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    .line 1544
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@4
    invoke-virtual {v1}, Lcom/android/server/wifi/ConfigurationMap;->valuesForCurrentUser()Ljava/util/Collection;

    #@7
    move-result-object v1

    #@8
    .line 1543
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/WifiConfigStore;->startWpsWithPinFromDevice(Landroid/net/wifi/WpsInfo;Ljava/util/Collection;)Landroid/net/wifi/WpsResult;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public trimANQPCache(Z)V
    .locals 2
    .param p1, "all"    # Z

    #@0
    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mAnqpCache:Lcom/android/server/wifi/hotspot2/AnqpCache;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/wifi/hotspot2/AnqpCache;->clear(ZZ)V

    #@6
    .line 404
    return-void
.end method

.method public tryEnableQualifiedNetwork(I)Z
    .locals 2
    .param p1, "networkId"    # I

    #@0
    .prologue
    .line 1397
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    .line 1398
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@6
    .line 1399
    const-string/jumbo v1, "updateQualifiedNetworkstatus invalid network."

    #@9
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@c
    .line 1400
    const/4 v1, 0x0

    #@d
    return v1

    #@e
    .line 1402
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->tryEnableQualifiedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    #@11
    move-result v1

    #@12
    return v1
.end method

.method updateConfiguration(Landroid/net/wifi/WifiInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    #@0
    .prologue
    .line 593
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    #@3
    move-result v6

    #@4
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v0

    #@8
    .line 594
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@d
    move-result-object v6

    #@e
    if-eqz v6, :cond_0

    #@10
    .line 595
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->getScanDetailCache(Landroid/net/wifi/WifiConfiguration;)Lcom/android/server/wifi/ScanDetailCache;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    #@17
    move-result-object v7

    #@18
    invoke-virtual {v6, v7}, Lcom/android/server/wifi/ScanDetailCache;->getScanDetail(Ljava/lang/String;)Lcom/android/server/wifi/ScanDetail;

    #@1b
    move-result-object v5

    #@1c
    .line 596
    .local v5, "scanDetail":Lcom/android/server/wifi/ScanDetail;
    if-eqz v5, :cond_0

    #@1e
    .line 597
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@21
    move-result-object v4

    #@22
    .line 598
    .local v4, "result":Landroid/net/wifi/ScanResult;
    iget-wide v2, v4, Landroid/net/wifi/ScanResult;->seen:J

    #@24
    .line 599
    .local v2, "previousSeen":J
    iget v1, v4, Landroid/net/wifi/ScanResult;->level:I

    #@26
    .line 602
    .local v1, "previousRssi":I
    invoke-virtual {v5}, Lcom/android/server/wifi/ScanDetail;->setSeen()J

    #@29
    .line 603
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    #@2c
    move-result v6

    #@2d
    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    #@2f
    .line 607
    const v6, 0x9c40

    #@32
    .line 606
    invoke-virtual {v4, v1, v2, v3, v6}, Landroid/net/wifi/ScanResult;->averageRssi(IJI)V

    #@35
    .line 608
    sget-boolean v6, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@37
    if-eqz v6, :cond_0

    #@39
    .line 609
    new-instance v6, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v7, "updateConfiguration freq="

    #@41
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v6

    #@45
    iget v7, v4, Landroid/net/wifi/ScanResult;->frequency:I

    #@47
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v6

    #@4b
    .line 610
    const-string/jumbo v7, " BSSID="

    #@4e
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    .line 610
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    #@54
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v6

    #@58
    .line 611
    const-string/jumbo v7, " RSSI="

    #@5b
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v6

    #@5f
    .line 611
    iget v7, v4, Landroid/net/wifi/ScanResult;->level:I

    #@61
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@64
    move-result-object v6

    #@65
    .line 612
    const-string/jumbo v7, " "

    #@68
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    .line 612
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@6f
    move-result-object v7

    #@70
    .line 609
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@73
    move-result-object v6

    #@74
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@77
    move-result-object v6

    #@78
    invoke-virtual {p0, v6}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@7b
    .line 592
    .end local v1    # "previousRssi":I
    .end local v2    # "previousSeen":J
    .end local v4    # "result":Landroid/net/wifi/ScanResult;
    .end local v5    # "scanDetail":Lcom/android/server/wifi/ScanDetail;
    :cond_0
    return-void
.end method

.method public updateLastConnectUid(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "uid"    # I

    #@0
    .prologue
    .line 666
    if-eqz p1, :cond_0

    #@2
    .line 667
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@4
    if-eq v0, p2, :cond_0

    #@6
    .line 668
    iput p2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@8
    .line 669
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 672
    :cond_0
    const/4 v0, 0x0

    #@b
    return v0
.end method

.method updateNetworkSelectionStatus(II)Z
    .locals 2
    .param p1, "netId"    # I
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 1350
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    #@3
    move-result-object v0

    #@4
    .line 1351
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@7
    move-result v1

    #@8
    return v1
.end method

.method updateNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1362
    if-nez p1, :cond_0

    #@4
    .line 1363
    return v1

    #@5
    .line 1366
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@8
    move-result-object v0

    #@9
    .line 1367
    .local v0, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-nez p2, :cond_1

    #@b
    .line 1368
    invoke-virtual {p0, p1, v1}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@e
    .line 1370
    new-instance v1, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v2, "Enable network:"

    #@16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@29
    .line 1371
    return v3

    #@2a
    .line 1374
    :cond_1
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->incrementDisableReasonCounter(I)V

    #@2d
    .line 1376
    new-instance v1, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v2, "Network:"

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v1

    #@39
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v1

    #@3f
    const-string/jumbo v2, "disable counter of "

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v1

    #@46
    .line 1377
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    #@49
    move-result-object v2

    #@4a
    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    .line 1378
    const-string/jumbo v2, " is: "

    #@51
    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v1

    #@55
    .line 1378
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@58
    move-result v2

    #@59
    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v1

    #@5d
    .line 1378
    const-string/jumbo v2, "and threshold is: "

    #@60
    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v1

    #@64
    .line 1379
    sget-object v2, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    #@66
    aget v2, v2, p2

    #@68
    .line 1376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v1

    #@70
    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@73
    .line 1382
    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@76
    move-result v1

    #@77
    .line 1383
    sget-object v2, Lcom/android/server/wifi/WifiConfigManager;->NETWORK_SELECTION_DISABLE_THRESHOLD:[I

    #@79
    aget v2, v2, p2

    #@7b
    .line 1382
    if-lt v1, v2, :cond_2

    #@7d
    .line 1384
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)Z

    #@80
    move-result v1

    #@81
    return v1

    #@82
    .line 1386
    :cond_2
    return v3
.end method

.method updateNetworkStatus(Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 9
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "reason"    # I

    #@0
    .prologue
    const/4 v8, 0x6

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    const/4 v6, 0x2

    #@4
    const/4 v5, 0x0

    #@5
    .line 1437
    new-instance v3, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v4, "updateNetworkStatus:"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v3

    #@11
    if-nez p1, :cond_0

    #@13
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@1e
    .line 1438
    if-nez p1, :cond_1

    #@20
    .line 1439
    return v5

    #@21
    .line 1437
    :cond_0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@23
    goto :goto_0

    #@24
    .line 1442
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@27
    move-result-object v1

    #@28
    .line 1443
    .local v1, "networkStatus":Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    if-ltz p2, :cond_2

    #@2a
    const/16 v2, 0xa

    #@2c
    if-lt p2, v2, :cond_3

    #@2e
    .line 1445
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v3, "Invalid Network disable reason:"

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@45
    .line 1446
    return v5

    #@46
    .line 1449
    :cond_3
    if-nez p2, :cond_5

    #@48
    .line 1450
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@4b
    move-result v2

    #@4c
    if-eqz v2, :cond_4

    #@4e
    .line 1452
    const-string/jumbo v2, "Need not change Qualified network Selection status since already enabled"

    #@51
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@54
    .line 1455
    return v5

    #@55
    .line 1457
    :cond_4
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    #@58
    .line 1459
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    #@5b
    .line 1461
    const-wide/16 v2, -0x1

    #@5d
    .line 1460
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    #@60
    .line 1463
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->clearDisableReasonCounter()V

    #@63
    .line 1464
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    #@66
    move-result-object v2

    #@67
    new-instance v3, Ljava/util/Date;

    #@69
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #@6c
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@6f
    move-result-object v0

    #@70
    .line 1466
    .local v0, "disableTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v3, "Re-enable network: "

    #@78
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@7e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v2

    #@82
    const-string/jumbo v3, " at "

    #@85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v2

    #@89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v2

    #@8d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v2

    #@91
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@94
    .line 1468
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@97
    .line 1515
    :goto_1
    return v7

    #@98
    .line 1471
    .end local v0    # "disableTime":Ljava/lang/String;
    :cond_5
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkPermanentlyDisabled()Z

    #@9b
    move-result v2

    #@9c
    if-eqz v2, :cond_6

    #@9e
    .line 1474
    new-instance v2, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v3, "Do nothing. Alreay permanent disabled! "

    #@a6
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v2

    #@aa
    .line 1475
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    #@ad
    move-result-object v3

    #@ae
    .line 1474
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v2

    #@b2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b5
    move-result-object v2

    #@b6
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@b9
    .line 1478
    return v5

    #@ba
    .line 1479
    :cond_6
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkTemporaryDisabled()Z

    #@bd
    move-result v2

    #@be
    if-eqz v2, :cond_7

    #@c0
    .line 1480
    if-ge p2, v8, :cond_7

    #@c2
    .line 1484
    new-instance v2, Ljava/lang/StringBuilder;

    #@c4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c7
    const-string/jumbo v3, "Do nothing. Already temporarily disabled! "

    #@ca
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    move-result-object v2

    #@ce
    .line 1485
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    #@d1
    move-result-object v3

    #@d2
    .line 1484
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v2

    #@d6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d9
    move-result-object v2

    #@da
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@dd
    .line 1488
    return v5

    #@de
    .line 1491
    :cond_7
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    #@e1
    move-result v2

    #@e2
    if-eqz v2, :cond_8

    #@e4
    .line 1492
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->disableNetworkNative(Landroid/net/wifi/WifiConfiguration;)Z

    #@e7
    .line 1493
    invoke-direct {p0, p1, v6}, Lcom/android/server/wifi/WifiConfigManager;->sendConfiguredNetworksChangedBroadcast(Landroid/net/wifi/WifiConfiguration;I)V

    #@ea
    .line 1495
    new-instance v2, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    const-string/jumbo v3, "Disable network "

    #@f2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v2

    #@f6
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@f8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v2

    #@fc
    const-string/jumbo v3, " reason:"

    #@ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@102
    move-result-object v2

    #@103
    .line 1496
    invoke-static {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    #@106
    move-result-object v3

    #@107
    .line 1495
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v2

    #@10b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10e
    move-result-object v2

    #@10f
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@112
    .line 1499
    :cond_8
    if-ge p2, v8, :cond_9

    #@114
    .line 1500
    invoke-virtual {v1, v7}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    #@117
    .line 1502
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigManager;->mClock:Lcom/android/server/wifi/Clock;

    #@119
    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->elapsedRealtime()J

    #@11c
    move-result-wide v2

    #@11d
    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setDisableTime(J)V

    #@120
    .line 1507
    :goto_2
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionDisableReason(I)V

    #@123
    .line 1509
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    #@126
    move-result-object v2

    #@127
    new-instance v3, Ljava/util/Date;

    #@129
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    #@12c
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@12f
    move-result-object v0

    #@130
    .line 1510
    .restart local v0    # "disableTime":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    #@132
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@135
    const-string/jumbo v3, "Network:"

    #@138
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13b
    move-result-object v2

    #@13c
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@13e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@141
    move-result-object v2

    #@142
    const-string/jumbo v3, "Configure new status:"

    #@145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v2

    #@149
    .line 1511
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@14c
    move-result-object v3

    #@14d
    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v2

    #@151
    .line 1511
    const-string/jumbo v3, " with reason:"

    #@154
    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@157
    move-result-object v2

    #@158
    .line 1512
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    #@15b
    move-result-object v3

    #@15c
    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v2

    #@160
    .line 1512
    const-string/jumbo v3, " at: "

    #@163
    .line 1510
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@166
    move-result-object v2

    #@167
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16a
    move-result-object v2

    #@16b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16e
    move-result-object v2

    #@16f
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigManager;->localLog(Ljava/lang/String;)V

    #@172
    goto/16 :goto_1

    #@174
    .line 1504
    .end local v0    # "disableTime":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->setNetworkSelectionStatus(I)V

    #@177
    goto :goto_2
.end method

.method public updateSavedNetworkWithNewScanDetail(Lcom/android/server/wifi/ScanDetail;Z)Ljava/util/List;
    .locals 9
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;
    .param p2, "isConnectingOrConnected"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/ScanDetail;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 2746
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@4
    move-result-object v6

    #@5
    .line 2747
    .local v6, "scanResult":Landroid/net/wifi/ScanResult;
    if-nez v6, :cond_0

    #@7
    .line 2748
    return-object v8

    #@8
    .line 2750
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getNetworkDetail()Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@b
    move-result-object v4

    #@c
    .line 2751
    .local v4, "networkDetail":Lcom/android/server/wifi/hotspot2/NetworkDetail;
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    .line 2752
    .local v0, "associatedWifiConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-virtual {v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->hasInterworking()Z

    #@14
    move-result v7

    #@15
    if-eqz v7, :cond_1

    #@17
    if-eqz p2, :cond_2

    #@19
    .line 2761
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->getSavedNetworkFromScanDetail(Lcom/android/server/wifi/ScanDetail;)Ljava/util/List;

    #@1c
    move-result-object v5

    #@1d
    .line 2762
    .local v5, "savedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v5, :cond_3

    #@1f
    .line 2763
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v2

    #@23
    .local v2, "config$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v7

    #@27
    if-eqz v7, :cond_3

    #@29
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v1

    #@2d
    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    #@2f
    .line 2764
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-direct {p0, v1, p1, v8}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForConfig(Landroid/net/wifi/WifiConfiguration;Lcom/android/server/wifi/ScanDetail;Lcom/android/server/wifi/hotspot2/PasspointMatch;)V

    #@32
    .line 2765
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@35
    goto :goto_1

    #@36
    .line 2753
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "config$iterator":Ljava/util/Iterator;
    .end local v5    # "savedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiConfigManager;->matchPasspointNetworks(Lcom/android/server/wifi/ScanDetail;)Ljava/util/Map;

    #@39
    move-result-object v3

    #@3a
    .line 2754
    .local v3, "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    if-eqz v3, :cond_1

    #@3c
    .line 2755
    invoke-direct {p0, p1, v3, v0}, Lcom/android/server/wifi/WifiConfigManager;->cacheScanResultForPasspointConfigs(Lcom/android/server/wifi/ScanDetail;Ljava/util/Map;Ljava/util/List;)V

    #@3f
    goto :goto_0

    #@40
    .line 2768
    .end local v3    # "matches":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/hotspot2/pps/HomeSP;Lcom/android/server/wifi/hotspot2/PasspointMatch;>;"
    .restart local v5    # "savedConfigurations":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@43
    move-result v7

    #@44
    if-nez v7, :cond_4

    #@46
    .line 2769
    return-object v8

    #@47
    .line 2771
    :cond_4
    return-object v0
.end method

.method updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 834
    const/4 v1, -0x1

    #@2
    if-eq p1, v1, :cond_1

    #@4
    .line 835
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@6
    invoke-virtual {v1, p1}, Lcom/android/server/wifi/ConfigurationMap;->getForAllUsers(I)Landroid/net/wifi/WifiConfiguration;

    #@9
    move-result-object v0

    #@a
    .line 836
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    #@c
    return-void

    #@d
    .line 837
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiConfigManager;->-getandroid-net-NetworkInfo$DetailedStateSwitchesValues()[I

    #@10
    move-result-object v1

    #@11
    invoke-virtual {p2}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@14
    move-result v2

    #@15
    aget v1, v1, v2

    #@17
    packed-switch v1, :pswitch_data_0

    #@1a
    .line 833
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    :goto_0
    return-void

    #@1b
    .line 839
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@1d
    .line 841
    invoke-virtual {p0, p1, v3}, Lcom/android/server/wifi/WifiConfigManager;->updateNetworkSelectionStatus(II)Z

    #@20
    goto :goto_0

    #@21
    .line 846
    :pswitch_1
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@23
    if-nez v1, :cond_1

    #@25
    .line 847
    const/4 v1, 0x2

    #@26
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@28
    goto :goto_0

    #@29
    .line 837
    nop

    #@2a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected wasEnterpriseConfigChange(Landroid/net/wifi/WifiEnterpriseConfig;Landroid/net/wifi/WifiEnterpriseConfig;)Z
    .locals 6
    .param p1, "originalEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;
    .param p2, "currentEnterpriseConfig"    # Landroid/net/wifi/WifiEnterpriseConfig;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 2200
    if-eqz p1, :cond_6

    #@3
    if-eqz p2, :cond_6

    #@5
    .line 2201
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@8
    move-result v3

    #@9
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@c
    move-result v4

    #@d
    if-eq v3, v4, :cond_0

    #@f
    .line 2202
    return v5

    #@10
    .line 2205
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    #@13
    move-result v3

    #@14
    .line 2206
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    #@17
    move-result v4

    #@18
    .line 2205
    if-eq v3, v4, :cond_1

    #@1a
    .line 2207
    return v5

    #@1b
    .line 2210
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    #@1e
    move-result-object v2

    #@1f
    .line 2211
    .local v2, "originalCaCerts":[Ljava/security/cert/X509Certificate;
    invoke-virtual {p2}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificates()[Ljava/security/cert/X509Certificate;

    #@22
    move-result-object v0

    #@23
    .line 2213
    .local v0, "currentCaCerts":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_4

    #@25
    if-eqz v0, :cond_4

    #@27
    .line 2214
    array-length v3, v2

    #@28
    array-length v4, v0

    #@29
    if-ne v3, v4, :cond_3

    #@2b
    .line 2215
    const/4 v1, 0x0

    #@2c
    .local v1, "i":I
    :goto_0
    array-length v3, v2

    #@2d
    if-ge v1, v3, :cond_8

    #@2f
    .line 2216
    aget-object v3, v2, v1

    #@31
    aget-object v4, v0, v1

    #@33
    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    #@36
    move-result v3

    #@37
    if-nez v3, :cond_2

    #@39
    .line 2217
    return v5

    #@3a
    .line 2215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 2222
    .end local v1    # "i":I
    :cond_3
    return v5

    #@3e
    .line 2226
    :cond_4
    if-nez v2, :cond_5

    #@40
    if-eqz v0, :cond_8

    #@42
    .line 2227
    :cond_5
    return v5

    #@43
    .line 2232
    .end local v0    # "currentCaCerts":[Ljava/security/cert/X509Certificate;
    .end local v2    # "originalCaCerts":[Ljava/security/cert/X509Certificate;
    :cond_6
    if-nez p1, :cond_7

    #@45
    if-eqz p2, :cond_8

    #@47
    .line 2233
    :cond_7
    return v5

    #@48
    .line 2236
    :cond_8
    const/4 v3, 0x0

    #@49
    return v3
.end method

.method public wasEphemeralNetworkDeleted(Ljava/lang/String;)Z
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3305
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 5
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2927
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@4
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@7
    .line 2929
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "\""

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, "\""

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@26
    .line 2931
    sget-boolean v1, Lcom/android/server/wifi/WifiConfigManager;->sVDBG:Z

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 2932
    new-instance v1, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v2, "WifiConfiguration from scan results "

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v1

    #@36
    .line 2933
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@38
    .line 2932
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v1

    #@3c
    .line 2933
    const-string/jumbo v2, " cap "

    #@3f
    .line 2932
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    .line 2933
    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@45
    .line 2932
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {p0, v1}, Lcom/android/server/wifi/WifiConfigManager;->logd(Ljava/lang/String;)V

    #@50
    .line 2936
    :cond_0
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@52
    const-string/jumbo v2, "PSK"

    #@55
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@58
    move-result v1

    #@59
    if-nez v1, :cond_1

    #@5b
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@5d
    const-string/jumbo v2, "EAP"

    #@60
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@63
    move-result v1

    #@64
    if-nez v1, :cond_1

    #@66
    .line 2937
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@68
    const-string/jumbo v2, "WEP"

    #@6b
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@6e
    move-result v1

    #@6f
    .line 2936
    if-eqz v1, :cond_5

    #@71
    .line 2938
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@73
    const-string/jumbo v2, "PSK"

    #@76
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@79
    move-result v1

    #@7a
    if-eqz v1, :cond_2

    #@7c
    .line 2939
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@7e
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    #@81
    .line 2942
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@83
    const-string/jumbo v2, "EAP"

    #@86
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@89
    move-result v1

    #@8a
    if-eqz v1, :cond_3

    #@8c
    .line 2943
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@8e
    const/4 v2, 0x2

    #@8f
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@92
    .line 2944
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@94
    const/4 v2, 0x3

    #@95
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    #@98
    .line 2947
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@9a
    const-string/jumbo v2, "WEP"

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@a0
    move-result v1

    #@a1
    if-eqz v1, :cond_4

    #@a3
    .line 2948
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@a5
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    #@a8
    .line 2949
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@aa
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    #@ad
    .line 2950
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@af
    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    #@b2
    .line 2956
    :cond_4
    :goto_0
    return-object v0

    #@b3
    .line 2953
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@b5
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    #@b8
    goto :goto_0
.end method

.method public wifiConfigurationFromScanResult(Lcom/android/server/wifi/ScanDetail;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanDetail"    # Lcom/android/server/wifi/ScanDetail;

    #@0
    .prologue
    .line 2960
    invoke-virtual {p1}, Lcom/android/server/wifi/ScanDetail;->getScanResult()Landroid/net/wifi/ScanResult;

    #@3
    move-result-object v0

    #@4
    .line 2961
    .local v0, "result":Landroid/net/wifi/ScanResult;
    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiConfigManager;->wifiConfigurationFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method public writeKnownNetworkHistory()V
    .locals 6

    #@0
    .prologue
    .line 1837
    new-instance v2, Ljava/util/ArrayList;

    #@2
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 1838
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mConfiguredNetworks:Lcom/android/server/wifi/ConfigurationMap;

    #@7
    invoke-virtual {v3}, Lcom/android/server/wifi/ConfigurationMap;->valuesForAllUsers()Ljava/util/Collection;

    #@a
    move-result-object v3

    #@b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@e
    move-result-object v1

    #@f
    .local v1, "config$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    #@1b
    .line 1839
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    #@1d
    invoke-direct {v3, v0}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    #@20
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@23
    goto :goto_0

    #@24
    .line 1841
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigManager;->mWifiNetworkHistory:Lcom/android/server/wifi/WifiNetworkHistory;

    #@26
    .line 1842
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigManager;->mScanDetailCaches:Ljava/util/concurrent/ConcurrentHashMap;

    #@28
    .line 1843
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigManager;->mDeletedEphemeralSSIDs:Ljava/util/Set;

    #@2a
    .line 1841
    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/wifi/WifiNetworkHistory;->writeKnownNetworkHistory(Ljava/util/List;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/Set;)V

    #@2d
    .line 1836
    return-void
.end method

.method public writePasspointConfigs(Ljava/lang/String;Lcom/android/server/wifi/hotspot2/pps/HomeSP;)V
    .locals 4
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "homeSP"    # Lcom/android/server/wifi/hotspot2/pps/HomeSP;

    #@0
    .prologue
    .line 1808
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigManager;->mWriter:Lcom/android/server/net/DelayedDiskWrite;

    #@2
    const-string/jumbo v1, "/data/misc/wifi/PerProviderSubscription.conf"

    #@5
    new-instance v2, Lcom/android/server/wifi/WifiConfigManager$3;

    #@7
    invoke-direct {v2, p0, p2, p1}, Lcom/android/server/wifi/WifiConfigManager$3;-><init>(Lcom/android/server/wifi/WifiConfigManager;Lcom/android/server/wifi/hotspot2/pps/HomeSP;Ljava/lang/String;)V

    #@a
    .line 1821
    const/4 v3, 0x0

    #@b
    .line 1808
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/net/DelayedDiskWrite;->write(Ljava/lang/String;Lcom/android/server/net/DelayedDiskWrite$Writer;Z)V

    #@e
    .line 1807
    return-void
.end method
