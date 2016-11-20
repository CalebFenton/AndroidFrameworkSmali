.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$1;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$Visibility;
    }
.end annotation


# static fields
.field public static final AP_BAND_2GHZ:I = 0x0

.field public static final AP_BAND_5GHZ:I = 0x1

.field private static final BACKUP_VERSION:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final HOME_NETWORK_RSSI_BOOST:I = 0x5

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static ROAMING_FAILURE_AUTH_FAILURE:I = 0x0

.field public static ROAMING_FAILURE_IP_CONFIG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final UNKNOWN_UID:I = -0x1

.field public static final USER_APPROVED:I = 0x1

.field public static final USER_BANNED:I = 0x2

.field public static final USER_PENDING:I = 0x3

.field public static final USER_UNSPECIFIED:I = 0x0

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public apBand:I

.field public apChannel:I

.field public creationTime:Ljava/lang/String;

.field public creatorName:Ljava/lang/String;

.field public creatorUid:I

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public dtimInterval:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public hiddenSSID:Z

.field public lastConnectUid:I

.field public lastConnected:J

.field public lastConnectionFailure:J

.field public lastDisconnected:J

.field public lastFailure:Ljava/lang/String;

.field public lastRoamingFailure:J

.field public lastRoamingFailureReason:I

.field public lastUpdateName:Ljava/lang/String;

.field public lastUpdateUid:I

.field public linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCachedConfigKey:Ljava/lang/String;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field private final mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

.field private mPasspointManagementObjectTree:Ljava/lang/String;

.field public meteredHint:Z

.field public networkId:I

.field public noInternetAccessExpected:Z

.field public numAssociation:I

.field public numNoInternetAccessReports:I

.field public numScorerOverride:I

.field public numScorerOverrideAndSwitchedNetwork:I

.field public numTicksAtBadRSSI:I

.field public numTicksAtLowRSSI:I

.field public numTicksAtNotHighRSSI:I

.field public numUserTriggeredJoinAttempts:I

.field public numUserTriggeredWifiDisableBadRSSI:I

.field public numUserTriggeredWifiDisableLowRSSI:I

.field public numUserTriggeredWifiDisableNotHighRSSI:I

.field public peerWifiConfiguration:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public providerFriendlyName:Ljava/lang/String;

.field public requirePMF:Z

.field public roamingConsortiumIds:[J

.field public roamingFailureBlackListTimeMilli:J

.field public selfAdded:Z

.field public shared:Z

.field public status:I

.field public updateIdentifier:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public useExternalScores:Z

.field public userApproved:I

.field public validatedInternetAccess:Z

.field public visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    return-object p1
.end method

.method static synthetic -set1(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    #@2
    return-object p1
.end method

.method static synthetic -wrap0(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .param p0, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 56
    const/4 v0, 0x4

    #@3
    new-array v0, v0, [Ljava/lang/String;

    #@5
    const-string/jumbo v1, "wep_key0"

    #@8
    const/4 v2, 0x0

    #@9
    aput-object v1, v0, v2

    #@b
    const-string/jumbo v1, "wep_key1"

    #@e
    aput-object v1, v0, v3

    #@10
    const-string/jumbo v1, "wep_key2"

    #@13
    aput-object v1, v0, v4

    #@15
    const-string/jumbo v1, "wep_key3"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    #@1d
    .line 466
    const/16 v0, -0x7f

    #@1f
    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@21
    .line 631
    sput v3, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    #@23
    .line 633
    sput v4, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    #@25
    .line 1984
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    #@27
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    #@2a
    .line 1983
    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@2c
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 1324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 259
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@8
    .line 268
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@a
    .line 411
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    #@c
    .line 453
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@e
    .line 640
    const-wide/16 v2, 0x3e8

    #@10
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@12
    .line 1305
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@14
    invoke-direct {v1, v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    #@17
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@19
    .line 1325
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1b
    .line 1326
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1d
    .line 1327
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@1f
    .line 1328
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@21
    .line 1329
    new-array v1, v4, [J

    #@23
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@25
    .line 1330
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@27
    .line 1331
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@29
    .line 1332
    new-instance v1, Ljava/util/BitSet;

    #@2b
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@2e
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@30
    .line 1333
    new-instance v1, Ljava/util/BitSet;

    #@32
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@35
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@37
    .line 1334
    new-instance v1, Ljava/util/BitSet;

    #@39
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@3c
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@3e
    .line 1335
    new-instance v1, Ljava/util/BitSet;

    #@40
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@43
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@45
    .line 1336
    new-instance v1, Ljava/util/BitSet;

    #@47
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@4a
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@4c
    .line 1337
    const/4 v1, 0x4

    #@4d
    new-array v1, v1, [Ljava/lang/String;

    #@4f
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@51
    .line 1338
    const/4 v0, 0x0

    #@52
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@54
    array-length v1, v1

    #@55
    if-ge v0, v1, :cond_0

    #@57
    .line 1339
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@59
    aput-object v5, v1, v0

    #@5b
    .line 1338
    add-int/lit8 v0, v0, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 1341
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    #@60
    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    #@63
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@65
    .line 1342
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@67
    .line 1343
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@69
    .line 1344
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@6b
    .line 1345
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@6d
    .line 1346
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@6f
    .line 1347
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@71
    .line 1348
    new-instance v1, Landroid/net/IpConfiguration;

    #@73
    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    #@76
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@78
    .line 1349
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@7a
    .line 1350
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@7c
    .line 1351
    const/4 v1, 0x1

    #@7d
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@7f
    .line 1352
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    #@81
    .line 1324
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 1830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 259
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@7
    .line 268
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@9
    .line 411
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    #@b
    .line 453
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@d
    .line 640
    const-wide/16 v2, 0x3e8

    #@f
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@11
    .line 1305
    new-instance v1, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@13
    invoke-direct {v1, v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    #@16
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@18
    .line 1831
    if-eqz p1, :cond_3

    #@1a
    .line 1832
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1c
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1e
    .line 1833
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@20
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@22
    .line 1834
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@24
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@26
    .line 1835
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@28
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@2a
    .line 1836
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2c
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2e
    .line 1837
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@30
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@33
    move-result-object v1

    #@34
    check-cast v1, [J

    #@36
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@38
    .line 1838
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3a
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3c
    .line 1839
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@3e
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@40
    .line 1841
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@42
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    #@49
    .line 1842
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@4b
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@4d
    .line 1843
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@4f
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@51
    .line 1845
    const/4 v1, 0x4

    #@52
    new-array v1, v1, [Ljava/lang/String;

    #@54
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@56
    .line 1846
    const/4 v0, 0x0

    #@57
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@59
    array-length v1, v1

    #@5a
    if-ge v0, v1, :cond_0

    #@5c
    .line 1847
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@5e
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@60
    aget-object v2, v2, v0

    #@62
    aput-object v2, v1, v0

    #@64
    .line 1846
    add-int/lit8 v0, v0, 0x1

    #@66
    goto :goto_0

    #@67
    .line 1850
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@69
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@6b
    .line 1851
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@6d
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@6f
    .line 1852
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@71
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@73
    .line 1853
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@75
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@78
    move-result-object v1

    #@79
    check-cast v1, Ljava/util/BitSet;

    #@7b
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@7d
    .line 1854
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@7f
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@82
    move-result-object v1

    #@83
    check-cast v1, Ljava/util/BitSet;

    #@85
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@87
    .line 1855
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@89
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@8c
    move-result-object v1

    #@8d
    check-cast v1, Ljava/util/BitSet;

    #@8f
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@91
    .line 1856
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@93
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@96
    move-result-object v1

    #@97
    check-cast v1, Ljava/util/BitSet;

    #@99
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@9b
    .line 1857
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@9d
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@a0
    move-result-object v1

    #@a1
    check-cast v1, Ljava/util/BitSet;

    #@a3
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@a5
    .line 1858
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    #@a7
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@a9
    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@ac
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@ae
    .line 1860
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@b0
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@b2
    .line 1862
    new-instance v1, Landroid/net/IpConfiguration;

    #@b4
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@b6
    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    #@b9
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@bb
    .line 1864
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@bd
    if-eqz v1, :cond_1

    #@bf
    .line 1865
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@c1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@c4
    move-result v1

    #@c5
    if-lez v1, :cond_1

    #@c7
    .line 1866
    new-instance v1, Ljava/util/HashMap;

    #@c9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@cc
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@ce
    .line 1867
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@d0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@d2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@d5
    .line 1869
    :cond_1
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@d7
    .line 1870
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@d9
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@db
    .line 1871
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@dd
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@df
    .line 1872
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@e1
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@e3
    .line 1873
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@e5
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@e7
    .line 1874
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@e9
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@eb
    .line 1875
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@ed
    if-eqz v1, :cond_2

    #@ef
    .line 1876
    new-instance v1, Landroid/net/wifi/WifiConfiguration$Visibility;

    #@f1
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@f3
    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    #@f6
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@f8
    .line 1879
    :cond_2
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@fa
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@fc
    .line 1880
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@fe
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@100
    .line 1881
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@102
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@104
    .line 1882
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@106
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@108
    .line 1883
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@10a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@10c
    .line 1884
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@10e
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@110
    .line 1885
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@112
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@114
    .line 1886
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@116
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@118
    .line 1888
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@11a
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@11c
    .line 1889
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    #@11e
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    #@120
    .line 1890
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@122
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@124
    .line 1891
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@126
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@128
    .line 1892
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@12a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@12c
    .line 1893
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@12e
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@130
    .line 1894
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@132
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@134
    .line 1895
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@136
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@138
    .line 1896
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@13a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@13c
    .line 1897
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@13e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@140
    .line 1898
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@142
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@144
    .line 1899
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@146
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@148
    .line 1900
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@14a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@14c
    .line 1901
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@14e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@150
    .line 1902
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@152
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@154
    .line 1903
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@156
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@158
    .line 1904
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@15a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@15c
    .line 1905
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@15e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@160
    .line 1906
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@162
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@164
    .line 1907
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@166
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@168
    .line 1908
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@16a
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@16c
    .line 1909
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@16e
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@170
    .line 1830
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public static getWifiConfigFromBackup(Ljava/io/DataInputStream;)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p0, "in"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/BackupUtils$BadVersionException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 2082
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    #@3
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    #@6
    .line 2083
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@9
    move-result v1

    #@a
    .line 2084
    .local v1, "version":I
    if-lt v1, v3, :cond_0

    #@c
    const/4 v2, 0x2

    #@d
    if-le v1, v2, :cond_1

    #@f
    .line 2085
    :cond_0
    new-instance v2, Landroid/util/BackupUtils$BadVersionException;

    #@11
    const-string/jumbo v3, "Unknown Backup Serialization Version"

    #@14
    invoke-direct {v2, v3}, Landroid/util/BackupUtils$BadVersionException;-><init>(Ljava/lang/String;)V

    #@17
    throw v2

    #@18
    .line 2088
    :cond_1
    if-ne v1, v3, :cond_2

    #@1a
    const/4 v2, 0x0

    #@1b
    return-object v2

    #@1c
    .line 2090
    :cond_2
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@22
    .line 2091
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@25
    move-result v2

    #@26
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@28
    .line 2092
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@2b
    move-result v2

    #@2c
    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@2e
    .line 2093
    invoke-static {p0}, Landroid/util/BackupUtils;->readString(Ljava/io/DataInputStream;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@34
    .line 2094
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@36
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    #@39
    move-result v3

    #@3a
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@3d
    .line 2095
    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1676
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1678
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    #@6
    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    #@9
    .line 1679
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 1680
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@13
    .line 1679
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1683
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1672
    const-string/jumbo v0, "\""

    #@3
    const-string/jumbo v1, ""

    #@6
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    const-string/jumbo v1, " "

    #@d
    const-string/jumbo v2, ""

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static userApprovedAsString(I)Ljava/lang/String;
    .locals 1
    .param p0, "userApproved"    # I

    #@0
    .prologue
    .line 1619
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1627
    const-string/jumbo v0, "INVALID"

    #@6
    return-object v0

    #@7
    .line 1621
    :pswitch_0
    const-string/jumbo v0, "USER_APPROVED"

    #@a
    return-object v0

    #@b
    .line 1623
    :pswitch_1
    const-string/jumbo v0, "USER_BANNED"

    #@e
    return-object v0

    #@f
    .line 1625
    :pswitch_2
    const-string/jumbo v0, "USER_UNSPECIFIED"

    #@12
    return-object v0

    #@13
    .line 1619
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    #@0
    .prologue
    .line 1687
    const/4 v0, -0x1

    #@1
    .line 1689
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1691
    :goto_0
    add-int/lit8 v1, v0, 0x1

    #@a
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@d
    move-result v0

    #@e
    const/4 v1, -0x1

    #@f
    if-eq v0, v1, :cond_0

    #@11
    .line 1692
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    goto :goto_0

    #@15
    .line 1686
    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1755
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public configKey(Z)Ljava/lang/String;
    .locals 6
    .param p1, "allowCached"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x2

    #@3
    .line 1725
    if-eqz p1, :cond_1

    #@5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 1726
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@b
    .line 1748
    .local v0, "key":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    #@c
    .line 1727
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_2

    #@10
    .line 1728
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@1d
    aget-object v2, v2, v3

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 1729
    .restart local v0    # "key":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@29
    if-nez v1, :cond_0

    #@2b
    .line 1730
    new-instance v1, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v1

    #@34
    const-string/jumbo v2, "-"

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@3d
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@40
    move-result v2

    #@41
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v1

    #@49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v0

    #@4d
    goto :goto_0

    #@4e
    .line 1733
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@50
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    #@53
    move-result v1

    #@54
    if-eqz v1, :cond_4

    #@56
    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@5d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v1

    #@61
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@63
    aget-object v2, v2, v5

    #@65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v1

    #@69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6c
    move-result-object v0

    #@6d
    .line 1743
    .restart local v0    # "key":Ljava/lang/String;
    :goto_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@6f
    if-nez v1, :cond_3

    #@71
    .line 1744
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    const-string/jumbo v2, "-"

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@83
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    #@86
    move-result v2

    #@87
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v1

    #@8f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@92
    move-result-object v0

    #@93
    .line 1746
    :cond_3
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@95
    goto/16 :goto_0

    #@97
    .line 1735
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@99
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    #@9c
    move-result v1

    #@9d
    if-nez v1, :cond_5

    #@9f
    .line 1736
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@a1
    const/4 v2, 0x3

    #@a2
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@a5
    move-result v1

    #@a6
    .line 1735
    if-eqz v1, :cond_6

    #@a8
    .line 1737
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    #@aa
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ad
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@af
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v1

    #@b3
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@b5
    aget-object v2, v2, v3

    #@b7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v1

    #@bb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v0

    #@bf
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    #@c0
    .line 1738
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@c2
    aget-object v1, v1, v4

    #@c4
    if-eqz v1, :cond_7

    #@c6
    .line 1739
    new-instance v1, Ljava/lang/StringBuilder;

    #@c8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cb
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@cd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v1

    #@d1
    const-string/jumbo v2, "WEP"

    #@d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v1

    #@d8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@db
    move-result-object v0

    #@dc
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    #@dd
    .line 1741
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    #@df
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@ea
    aget-object v2, v2, v4

    #@ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v1

    #@f0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f3
    move-result-object v0

    #@f4
    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1816
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getAuthType()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v3, 0x3

    #@2
    const/4 v2, 0x2

    #@3
    const/4 v1, 0x1

    #@4
    .line 1698
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@6
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@9
    move-result v0

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 1699
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "More than one auth type set"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1701
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1702
    return v1

    #@1e
    .line 1703
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@20
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 1704
    return v4

    #@27
    .line 1705
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@29
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 1706
    return v2

    #@30
    .line 1707
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@32
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 1708
    return v3

    #@39
    .line 1710
    :cond_4
    const/4 v0, 0x0

    #@3a
    return v0
.end method

.method public getBytesForBackup()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2064
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@2
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@5
    .line 2065
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@7
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@a
    .line 2067
    .local v1, "out":Ljava/io/DataOutputStream;
    const/4 v2, 0x2

    #@b
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@e
    .line 2068
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@10
    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    #@13
    .line 2069
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@15
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@18
    .line 2070
    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@1a
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1d
    .line 2071
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@1f
    invoke-static {v1, v2}, Landroid/util/BackupUtils;->writeString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    #@22
    .line 2072
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    #@25
    move-result v2

    #@26
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@29
    .line 2073
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@2c
    move-result-object v2

    #@2d
    return-object v2
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    #@0
    .prologue
    .line 1800
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iget-object v0, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@4
    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    #@0
    .prologue
    .line 1780
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iget-object v0, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@4
    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    #@0
    .prologue
    .line 1760
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    return-object v0
.end method

.method public getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 6
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1640
    const/4 v1, 0x0

    #@2
    .line 1644
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@c
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@e
    .line 1645
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@10
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 1646
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@18
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1a
    .line 1648
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1c
    const/4 v4, 0x2

    #@1d
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    #@20
    move-result v3

    #@21
    if-eqz v3, :cond_2

    #@23
    .line 1649
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@25
    const/4 v4, 0x2

    #@26
    aget-object v1, v3, v4

    #@28
    .line 1651
    .end local v1    # "keyMgmt":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2a
    const/4 v4, 0x5

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 1652
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@33
    const/4 v4, 0x5

    #@34
    aget-object v1, v3, v4

    #@36
    .line 1654
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@38
    const/4 v4, 0x3

    #@39
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    #@3c
    move-result v3

    #@3d
    if-eqz v3, :cond_4

    #@3f
    .line 1655
    new-instance v3, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@4a
    const/4 v5, 0x3

    #@4b
    aget-object v4, v4, v5

    #@4d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v3

    #@51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    .line 1658
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@58
    move-result v3

    #@59
    if-eqz v3, :cond_5

    #@5b
    .line 1659
    new-instance v2, Ljava/lang/IllegalStateException;

    #@5d
    const-string/jumbo v3, "Not an EAP network"

    #@60
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@63
    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@64
    .line 1665
    :catch_0
    move-exception v0

    #@65
    .line 1666
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@67
    const-string/jumbo v3, "Invalid config details"

    #@6a
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v2

    #@6e
    .line 1662
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@70
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@73
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@75
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    const-string/jumbo v4, "_"

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v3

    #@84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v3

    #@88
    const-string/jumbo v4, "_"

    #@8b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v3

    #@8f
    .line 1663
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@91
    if-eqz p1, :cond_6

    #@93
    .line 1664
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@95
    .line 1663
    :cond_6
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    #@98
    move-result-object v2

    #@99
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    #@9c
    move-result-object v2

    #@9d
    .line 1662
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v2

    #@a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@a4
    move-result-object v2

    #@a5
    return-object v2
.end method

.method public getMoTree()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1826
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .locals 1

    #@0
    .prologue
    .line 1312
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@2
    return-object v0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v4, 0x22

    #@5
    .line 1598
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@7
    if-nez v2, :cond_0

    #@9
    const-string/jumbo v2, ""

    #@c
    return-object v2

    #@d
    .line 1599
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    .line 1600
    .local v0, "length":I
    if-le v0, v7, :cond_1

    #@15
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@17
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@1a
    move-result v2

    #@1b
    if-ne v2, v4, :cond_1

    #@1d
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@1f
    add-int/lit8 v3, v0, -0x1

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@24
    move-result v2

    #@25
    if-ne v2, v4, :cond_1

    #@27
    .line 1601
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@29
    add-int/lit8 v3, v0, -0x1

    #@2b
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    return-object v2

    #@30
    .line 1608
    :cond_1
    const/4 v2, 0x3

    #@31
    if-le v0, v2, :cond_2

    #@33
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@35
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    #@38
    move-result v2

    #@39
    const/16 v3, 0x50

    #@3b
    if-ne v2, v3, :cond_2

    #@3d
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@3f
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    #@42
    move-result v2

    #@43
    if-ne v2, v4, :cond_2

    #@45
    .line 1609
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@47
    add-int/lit8 v3, v0, -0x1

    #@49
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    #@4c
    move-result v2

    #@4d
    if-ne v2, v4, :cond_2

    #@4f
    .line 1611
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@51
    add-int/lit8 v3, v0, -0x1

    #@53
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 1610
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@5a
    move-result-object v1

    #@5b
    .line 1612
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    return-object v2

    #@60
    .line 1614
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@62
    return-object v2
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    #@0
    .prologue
    .line 1790
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@4
    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    #@0
    .prologue
    .line 1770
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public hasNoInternetAccess()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 600
    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@3
    if-lez v1, :cond_0

    #@5
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public isEnterprise()Z
    .locals 2

    #@0
    .prologue
    .line 1386
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2
    const/4 v1, 0x2

    #@3
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@6
    move-result v0

    #@7
    if-nez v0, :cond_0

    #@9
    .line 1387
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@f
    move-result v0

    #@10
    .line 1386
    :goto_0
    return v0

    #@11
    :cond_0
    const/4 v0, 0x1

    #@12
    goto :goto_0
.end method

.method public isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1370
    if-eqz p1, :cond_0

    #@2
    .line 1371
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 1372
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@c
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 1373
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@18
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    if-eqz v0, :cond_0

    #@22
    .line 1374
    const/4 v0, 0x1

    #@23
    return v0

    #@24
    .line 1378
    :cond_0
    const/4 v0, 0x0

    #@25
    return v0
.end method

.method public isPasspoint()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1359
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 1360
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 1359
    :cond_0
    :goto_0
    return v0

    #@12
    .line 1361
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 1362
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@18
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    #@1b
    move-result v1

    #@1c
    const/4 v2, -0x1

    #@1d
    if-eq v1, v2, :cond_0

    #@1f
    const/4 v0, 0x1

    #@20
    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 1805
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@4
    .line 1804
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    #@0
    .prologue
    .line 1785
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@4
    .line 1784
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    .line 1765
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    .line 1764
    return-void
.end method

.method public setPasspointManagementObjectTree(Ljava/lang/String;)V
    .locals 0
    .param p1, "passpointManagementObjectTree"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1821
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    #@2
    .line 1820
    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 1810
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@4
    .line 1811
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@6
    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@8
    .line 1809
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    #@0
    .prologue
    .line 1795
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@4
    .line 1794
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 1775
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    #@5
    .line 1774
    return-void
.end method

.method public setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 0
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    #@0
    .prologue
    .line 550
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@2
    .line 549
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    #@0
    .prologue
    .line 1392
    new-instance v14, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 1393
    .local v14, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@7
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@9
    if-nez v15, :cond_2

    #@b
    .line 1394
    const-string/jumbo v15, "* "

    #@e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 1398
    :cond_0
    :goto_0
    const-string/jumbo v15, "ID: "

    #@14
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v15

    #@18
    move-object/from16 v0, p0

    #@1a
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@1c
    move/from16 v16, v0

    #@1e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v15

    #@22
    const-string/jumbo v16, " SSID: "

    #@25
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v15

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@2d
    move-object/from16 v16, v0

    #@2f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v15

    #@33
    .line 1399
    const-string/jumbo v16, " PROVIDER-NAME: "

    #@36
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v15

    #@3a
    .line 1399
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3e
    move-object/from16 v16, v0

    #@40
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v15

    #@44
    .line 1400
    const-string/jumbo v16, " BSSID: "

    #@47
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v15

    #@4b
    .line 1400
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@4f
    move-object/from16 v16, v0

    #@51
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v15

    #@55
    .line 1400
    const-string/jumbo v16, " FQDN: "

    #@58
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v15

    #@5c
    .line 1400
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@60
    move-object/from16 v16, v0

    #@62
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v15

    #@66
    .line 1401
    const-string/jumbo v16, " PRIO: "

    #@69
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v15

    #@6d
    .line 1401
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@71
    move/from16 v16, v0

    #@73
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v15

    #@77
    .line 1402
    const-string/jumbo v16, " HIDDEN: "

    #@7a
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v15

    #@7e
    .line 1402
    move-object/from16 v0, p0

    #@80
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@82
    move/from16 v16, v0

    #@84
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@87
    move-result-object v15

    #@88
    .line 1403
    const/16 v16, 0xa

    #@8a
    .line 1398
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8d
    .line 1406
    const-string/jumbo v15, " NetworkSelectionStatus "

    #@90
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v15

    #@94
    .line 1407
    move-object/from16 v0, p0

    #@96
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@98
    move-object/from16 v16, v0

    #@9a
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    #@9d
    move-result-object v16

    #@9e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v15

    #@a2
    const-string/jumbo v16, "\n"

    #@a5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    .line 1408
    move-object/from16 v0, p0

    #@aa
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@ac
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    #@af
    move-result v15

    #@b0
    if-lez v15, :cond_3

    #@b2
    .line 1409
    const-string/jumbo v15, " mNetworkSelectionDisableReason "

    #@b5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b8
    move-result-object v15

    #@b9
    .line 1410
    move-object/from16 v0, p0

    #@bb
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@bd
    move-object/from16 v16, v0

    #@bf
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString()Ljava/lang/String;

    #@c2
    move-result-object v16

    #@c3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v15

    #@c7
    const-string/jumbo v16, "\n"

    #@ca
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cd
    .line 1412
    const/4 v6, 0x0

    #@ce
    .line 1413
    .local v6, "index":I
    :goto_1
    const/16 v15, 0xa

    #@d0
    .line 1412
    if-ge v6, v15, :cond_3

    #@d2
    .line 1414
    move-object/from16 v0, p0

    #@d4
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@d6
    invoke-virtual {v15, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@d9
    move-result v15

    #@da
    if-eqz v15, :cond_1

    #@dc
    .line 1415
    invoke-static {v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkDisableReasonString(I)Ljava/lang/String;

    #@df
    move-result-object v15

    #@e0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v15

    #@e4
    .line 1416
    const-string/jumbo v16, " counter:"

    #@e7
    .line 1415
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v15

    #@eb
    .line 1416
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@ef
    move-object/from16 v16, v0

    #@f1
    move-object/from16 v0, v16

    #@f3
    invoke-virtual {v0, v6}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    #@f6
    move-result v16

    #@f7
    .line 1415
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v15

    #@fb
    .line 1417
    const-string/jumbo v16, "\n"

    #@fe
    .line 1415
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    .line 1413
    :cond_1
    add-int/lit8 v6, v6, 0x1

    #@103
    goto :goto_1

    #@104
    .line 1395
    .end local v6    # "index":I
    :cond_2
    move-object/from16 v0, p0

    #@106
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@108
    const/16 v16, 0x1

    #@10a
    move/from16 v0, v16

    #@10c
    if-ne v15, v0, :cond_0

    #@10e
    .line 1396
    const-string/jumbo v15, "- DSBLE "

    #@111
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    goto/16 :goto_0

    #@116
    .line 1421
    :cond_3
    move-object/from16 v0, p0

    #@118
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@11a
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@11d
    move-result-object v15

    #@11e
    if-eqz v15, :cond_4

    #@120
    .line 1422
    const-string/jumbo v15, " connect choice: "

    #@123
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v15

    #@127
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@12b
    move-object/from16 v16, v0

    #@12d
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    #@130
    move-result-object v16

    #@131
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@134
    .line 1423
    const-string/jumbo v15, " connect choice set time: "

    #@137
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13a
    move-result-object v15

    #@13b
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@13f
    move-object/from16 v16, v0

    #@141
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceTimestamp()J

    #@144
    move-result-wide v16

    #@145
    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@148
    .line 1426
    :cond_4
    const-string/jumbo v15, " hasEverConnected: "

    #@14b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14e
    move-result-object v15

    #@14f
    .line 1427
    move-object/from16 v0, p0

    #@151
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@153
    move-object/from16 v16, v0

    #@155
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    #@158
    move-result v16

    #@159
    .line 1426
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@15c
    move-result-object v15

    #@15d
    .line 1427
    const-string/jumbo v16, "\n"

    #@160
    .line 1426
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    .line 1429
    move-object/from16 v0, p0

    #@165
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@167
    if-lez v15, :cond_5

    #@169
    .line 1430
    const-string/jumbo v15, " numAssociation "

    #@16c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v15

    #@170
    move-object/from16 v0, p0

    #@172
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@174
    move/from16 v16, v0

    #@176
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@179
    move-result-object v15

    #@17a
    const-string/jumbo v16, "\n"

    #@17d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@180
    .line 1432
    :cond_5
    move-object/from16 v0, p0

    #@182
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@184
    if-lez v15, :cond_6

    #@186
    .line 1433
    const-string/jumbo v15, " numNoInternetAccessReports "

    #@189
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18c
    .line 1434
    move-object/from16 v0, p0

    #@18e
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@190
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@193
    move-result-object v15

    #@194
    const-string/jumbo v16, "\n"

    #@197
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19a
    .line 1436
    :cond_6
    move-object/from16 v0, p0

    #@19c
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@19e
    if-eqz v15, :cond_7

    #@1a0
    .line 1437
    const-string/jumbo v15, "update "

    #@1a3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a6
    move-result-object v15

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@1ab
    move-object/from16 v16, v0

    #@1ad
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b0
    move-result-object v15

    #@1b1
    const-string/jumbo v16, "\n"

    #@1b4
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b7
    .line 1439
    :cond_7
    move-object/from16 v0, p0

    #@1b9
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@1bb
    if-eqz v15, :cond_8

    #@1bd
    .line 1440
    const-string/jumbo v15, "creation"

    #@1c0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c3
    move-result-object v15

    #@1c4
    move-object/from16 v0, p0

    #@1c6
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@1c8
    move-object/from16 v16, v0

    #@1ca
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cd
    move-result-object v15

    #@1ce
    const-string/jumbo v16, "\n"

    #@1d1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d4
    .line 1442
    :cond_8
    move-object/from16 v0, p0

    #@1d6
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@1d8
    if-eqz v15, :cond_9

    #@1da
    const-string/jumbo v15, " didSelfAdd"

    #@1dd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e0
    .line 1443
    :cond_9
    move-object/from16 v0, p0

    #@1e2
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@1e4
    if-eqz v15, :cond_a

    #@1e6
    const-string/jumbo v15, " selfAdded"

    #@1e9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ec
    .line 1444
    :cond_a
    move-object/from16 v0, p0

    #@1ee
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@1f0
    if-eqz v15, :cond_b

    #@1f2
    const-string/jumbo v15, " validatedInternetAccess"

    #@1f5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    .line 1445
    :cond_b
    move-object/from16 v0, p0

    #@1fa
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1fc
    if-eqz v15, :cond_c

    #@1fe
    const-string/jumbo v15, " ephemeral"

    #@201
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    .line 1446
    :cond_c
    move-object/from16 v0, p0

    #@206
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@208
    if-eqz v15, :cond_d

    #@20a
    const-string/jumbo v15, " meteredHint"

    #@20d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    .line 1447
    :cond_d
    move-object/from16 v0, p0

    #@212
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@214
    if-eqz v15, :cond_e

    #@216
    const-string/jumbo v15, " useExternalScores"

    #@219
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21c
    .line 1448
    :cond_e
    move-object/from16 v0, p0

    #@21e
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@220
    if-nez v15, :cond_f

    #@222
    move-object/from16 v0, p0

    #@224
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@226
    if-nez v15, :cond_f

    #@228
    move-object/from16 v0, p0

    #@22a
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@22c
    if-nez v15, :cond_f

    #@22e
    .line 1449
    move-object/from16 v0, p0

    #@230
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@232
    .line 1448
    if-nez v15, :cond_f

    #@234
    .line 1449
    move-object/from16 v0, p0

    #@236
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@238
    .line 1448
    if-nez v15, :cond_f

    #@23a
    .line 1449
    move-object/from16 v0, p0

    #@23c
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@23e
    .line 1448
    if-eqz v15, :cond_10

    #@240
    .line 1450
    :cond_f
    const-string/jumbo v15, "\n"

    #@243
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@246
    .line 1452
    :cond_10
    const-string/jumbo v15, " KeyMgmt:"

    #@249
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24c
    .line 1453
    const/4 v7, 0x0

    #@24d
    .local v7, "k":I
    :goto_2
    move-object/from16 v0, p0

    #@24f
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@251
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@254
    move-result v15

    #@255
    if-ge v7, v15, :cond_13

    #@257
    .line 1454
    move-object/from16 v0, p0

    #@259
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@25b
    invoke-virtual {v15, v7}, Ljava/util/BitSet;->get(I)Z

    #@25e
    move-result v15

    #@25f
    if-eqz v15, :cond_11

    #@261
    .line 1455
    const-string/jumbo v15, " "

    #@264
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@267
    .line 1456
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@269
    array-length v15, v15

    #@26a
    if-ge v7, v15, :cond_12

    #@26c
    .line 1457
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@26e
    aget-object v15, v15, v7

    #@270
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@273
    .line 1453
    :cond_11
    :goto_3
    add-int/lit8 v7, v7, 0x1

    #@275
    goto :goto_2

    #@276
    .line 1459
    :cond_12
    const-string/jumbo v15, "??"

    #@279
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27c
    goto :goto_3

    #@27d
    .line 1463
    :cond_13
    const-string/jumbo v15, " Protocols:"

    #@280
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@283
    .line 1464
    const/4 v12, 0x0

    #@284
    .local v12, "p":I
    :goto_4
    move-object/from16 v0, p0

    #@286
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@288
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@28b
    move-result v15

    #@28c
    if-ge v12, v15, :cond_16

    #@28e
    .line 1465
    move-object/from16 v0, p0

    #@290
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@292
    invoke-virtual {v15, v12}, Ljava/util/BitSet;->get(I)Z

    #@295
    move-result v15

    #@296
    if-eqz v15, :cond_14

    #@298
    .line 1466
    const-string/jumbo v15, " "

    #@29b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29e
    .line 1467
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@2a0
    array-length v15, v15

    #@2a1
    if-ge v12, v15, :cond_15

    #@2a3
    .line 1468
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@2a5
    aget-object v15, v15, v12

    #@2a7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2aa
    .line 1464
    :cond_14
    :goto_5
    add-int/lit8 v12, v12, 0x1

    #@2ac
    goto :goto_4

    #@2ad
    .line 1470
    :cond_15
    const-string/jumbo v15, "??"

    #@2b0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b3
    goto :goto_5

    #@2b4
    .line 1474
    :cond_16
    const/16 v15, 0xa

    #@2b6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b9
    .line 1475
    const-string/jumbo v15, " AuthAlgorithms:"

    #@2bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2bf
    .line 1476
    const/4 v2, 0x0

    #@2c0
    .local v2, "a":I
    :goto_6
    move-object/from16 v0, p0

    #@2c2
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@2c4
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@2c7
    move-result v15

    #@2c8
    if-ge v2, v15, :cond_19

    #@2ca
    .line 1477
    move-object/from16 v0, p0

    #@2cc
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@2ce
    invoke-virtual {v15, v2}, Ljava/util/BitSet;->get(I)Z

    #@2d1
    move-result v15

    #@2d2
    if-eqz v15, :cond_17

    #@2d4
    .line 1478
    const-string/jumbo v15, " "

    #@2d7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2da
    .line 1479
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@2dc
    array-length v15, v15

    #@2dd
    if-ge v2, v15, :cond_18

    #@2df
    .line 1480
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@2e1
    aget-object v15, v15, v2

    #@2e3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e6
    .line 1476
    :cond_17
    :goto_7
    add-int/lit8 v2, v2, 0x1

    #@2e8
    goto :goto_6

    #@2e9
    .line 1482
    :cond_18
    const-string/jumbo v15, "??"

    #@2ec
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ef
    goto :goto_7

    #@2f0
    .line 1486
    :cond_19
    const/16 v15, 0xa

    #@2f2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2f5
    .line 1487
    const-string/jumbo v15, " PairwiseCiphers:"

    #@2f8
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2fb
    .line 1488
    const/4 v13, 0x0

    #@2fc
    .local v13, "pc":I
    :goto_8
    move-object/from16 v0, p0

    #@2fe
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@300
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@303
    move-result v15

    #@304
    if-ge v13, v15, :cond_1c

    #@306
    .line 1489
    move-object/from16 v0, p0

    #@308
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@30a
    invoke-virtual {v15, v13}, Ljava/util/BitSet;->get(I)Z

    #@30d
    move-result v15

    #@30e
    if-eqz v15, :cond_1a

    #@310
    .line 1490
    const-string/jumbo v15, " "

    #@313
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@316
    .line 1491
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@318
    array-length v15, v15

    #@319
    if-ge v13, v15, :cond_1b

    #@31b
    .line 1492
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@31d
    aget-object v15, v15, v13

    #@31f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@322
    .line 1488
    :cond_1a
    :goto_9
    add-int/lit8 v13, v13, 0x1

    #@324
    goto :goto_8

    #@325
    .line 1494
    :cond_1b
    const-string/jumbo v15, "??"

    #@328
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32b
    goto :goto_9

    #@32c
    .line 1498
    :cond_1c
    const/16 v15, 0xa

    #@32e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@331
    .line 1499
    const-string/jumbo v15, " GroupCiphers:"

    #@334
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@337
    .line 1500
    const/4 v3, 0x0

    #@338
    .local v3, "gc":I
    :goto_a
    move-object/from16 v0, p0

    #@33a
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@33c
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@33f
    move-result v15

    #@340
    if-ge v3, v15, :cond_1f

    #@342
    .line 1501
    move-object/from16 v0, p0

    #@344
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@346
    invoke-virtual {v15, v3}, Ljava/util/BitSet;->get(I)Z

    #@349
    move-result v15

    #@34a
    if-eqz v15, :cond_1d

    #@34c
    .line 1502
    const-string/jumbo v15, " "

    #@34f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@352
    .line 1503
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@354
    array-length v15, v15

    #@355
    if-ge v3, v15, :cond_1e

    #@357
    .line 1504
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@359
    aget-object v15, v15, v3

    #@35b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35e
    .line 1500
    :cond_1d
    :goto_b
    add-int/lit8 v3, v3, 0x1

    #@360
    goto :goto_a

    #@361
    .line 1506
    :cond_1e
    const-string/jumbo v15, "??"

    #@364
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@367
    goto :goto_b

    #@368
    .line 1510
    :cond_1f
    const/16 v15, 0xa

    #@36a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@36d
    move-result-object v15

    #@36e
    const-string/jumbo v16, " PSK: "

    #@371
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@374
    .line 1511
    move-object/from16 v0, p0

    #@376
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@378
    if-eqz v15, :cond_20

    #@37a
    .line 1512
    const/16 v15, 0x2a

    #@37c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37f
    .line 1514
    :cond_20
    const-string/jumbo v15, "\nEnterprise config:\n"

    #@382
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@385
    .line 1515
    move-object/from16 v0, p0

    #@387
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@389
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@38c
    .line 1517
    const-string/jumbo v15, "IP config:\n"

    #@38f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@392
    .line 1518
    move-object/from16 v0, p0

    #@394
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@396
    invoke-virtual {v15}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    #@399
    move-result-object v15

    #@39a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39d
    .line 1520
    move-object/from16 v0, p0

    #@39f
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3a1
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    #@3a4
    move-result-object v15

    #@3a5
    if-eqz v15, :cond_21

    #@3a7
    .line 1521
    const-string/jumbo v15, " networkSelectionBSSID="

    #@3aa
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3ad
    move-result-object v15

    #@3ae
    .line 1522
    move-object/from16 v0, p0

    #@3b0
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3b2
    move-object/from16 v16, v0

    #@3b4
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    #@3b7
    move-result-object v16

    #@3b8
    .line 1521
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3bb
    .line 1524
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3be
    move-result-wide v10

    #@3bf
    .line 1525
    .local v10, "now_ms":J
    move-object/from16 v0, p0

    #@3c1
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3c3
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    #@3c6
    move-result-wide v16

    #@3c7
    const-wide/16 v18, -0x1

    #@3c9
    cmp-long v15, v16, v18

    #@3cb
    if-eqz v15, :cond_22

    #@3cd
    .line 1527
    const/16 v15, 0xa

    #@3cf
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3d2
    .line 1528
    move-object/from16 v0, p0

    #@3d4
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@3d6
    invoke-virtual {v15}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    #@3d9
    move-result-wide v16

    #@3da
    sub-long v4, v10, v16

    #@3dc
    .line 1529
    .local v4, "diff":J
    const-wide/16 v16, 0x0

    #@3de
    cmp-long v15, v4, v16

    #@3e0
    if-gtz v15, :cond_2a

    #@3e2
    .line 1530
    const-string/jumbo v15, " blackListed since <incorrect>"

    #@3e5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e8
    .line 1535
    .end local v4    # "diff":J
    :cond_22
    :goto_c
    move-object/from16 v0, p0

    #@3ea
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@3ec
    if-eqz v15, :cond_23

    #@3ee
    const-string/jumbo v15, " cuid="

    #@3f1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f4
    move-result-object v15

    #@3f5
    move-object/from16 v0, p0

    #@3f7
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@3f9
    move/from16 v16, v0

    #@3fb
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3fe
    .line 1536
    :cond_23
    move-object/from16 v0, p0

    #@400
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@402
    if-eqz v15, :cond_24

    #@404
    const-string/jumbo v15, " cname="

    #@407
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40a
    move-result-object v15

    #@40b
    move-object/from16 v0, p0

    #@40d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@40f
    move-object/from16 v16, v0

    #@411
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@414
    .line 1537
    :cond_24
    move-object/from16 v0, p0

    #@416
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@418
    if-eqz v15, :cond_25

    #@41a
    const-string/jumbo v15, " luid="

    #@41d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@420
    move-result-object v15

    #@421
    move-object/from16 v0, p0

    #@423
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@425
    move/from16 v16, v0

    #@427
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@42a
    .line 1538
    :cond_25
    move-object/from16 v0, p0

    #@42c
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@42e
    if-eqz v15, :cond_26

    #@430
    const-string/jumbo v15, " lname="

    #@433
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@436
    move-result-object v15

    #@437
    move-object/from16 v0, p0

    #@439
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@43b
    move-object/from16 v16, v0

    #@43d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@440
    .line 1539
    :cond_26
    const-string/jumbo v15, " lcuid="

    #@443
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@446
    move-result-object v15

    #@447
    move-object/from16 v0, p0

    #@449
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@44b
    move/from16 v16, v0

    #@44d
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@450
    .line 1540
    const-string/jumbo v15, " userApproved="

    #@453
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@456
    move-result-object v15

    #@457
    move-object/from16 v0, p0

    #@459
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@45b
    move/from16 v16, v0

    #@45d
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    #@460
    move-result-object v16

    #@461
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@464
    .line 1541
    const-string/jumbo v15, " noInternetAccessExpected="

    #@467
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46a
    move-result-object v15

    #@46b
    move-object/from16 v0, p0

    #@46d
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@46f
    move/from16 v16, v0

    #@471
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@474
    .line 1542
    const-string/jumbo v15, " "

    #@477
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47a
    .line 1544
    move-object/from16 v0, p0

    #@47c
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@47e
    move-wide/from16 v16, v0

    #@480
    const-wide/16 v18, 0x0

    #@482
    cmp-long v15, v16, v18

    #@484
    if-eqz v15, :cond_27

    #@486
    .line 1545
    const/16 v15, 0xa

    #@488
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@48b
    .line 1546
    move-object/from16 v0, p0

    #@48d
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@48f
    move-wide/from16 v16, v0

    #@491
    sub-long v4, v10, v16

    #@493
    .line 1547
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    #@495
    cmp-long v15, v4, v16

    #@497
    if-gtz v15, :cond_2b

    #@499
    .line 1548
    const-string/jumbo v15, "lastConnected since <incorrect>"

    #@49c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49f
    .line 1553
    .end local v4    # "diff":J
    :cond_27
    :goto_d
    move-object/from16 v0, p0

    #@4a1
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@4a3
    move-wide/from16 v16, v0

    #@4a5
    const-wide/16 v18, 0x0

    #@4a7
    cmp-long v15, v16, v18

    #@4a9
    if-eqz v15, :cond_28

    #@4ab
    .line 1554
    const/16 v15, 0xa

    #@4ad
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4b0
    .line 1555
    move-object/from16 v0, p0

    #@4b2
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@4b4
    move-wide/from16 v16, v0

    #@4b6
    sub-long v4, v10, v16

    #@4b8
    .line 1556
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    #@4ba
    cmp-long v15, v4, v16

    #@4bc
    if-gtz v15, :cond_2c

    #@4be
    .line 1557
    const-string/jumbo v15, "lastConnectionFailure since <incorrect> "

    #@4c1
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c4
    .line 1563
    .end local v4    # "diff":J
    :cond_28
    :goto_e
    move-object/from16 v0, p0

    #@4c6
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@4c8
    move-wide/from16 v16, v0

    #@4ca
    const-wide/16 v18, 0x0

    #@4cc
    cmp-long v15, v16, v18

    #@4ce
    if-eqz v15, :cond_29

    #@4d0
    .line 1564
    const/16 v15, 0xa

    #@4d2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4d5
    .line 1565
    move-object/from16 v0, p0

    #@4d7
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@4d9
    move-wide/from16 v16, v0

    #@4db
    sub-long v4, v10, v16

    #@4dd
    .line 1566
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    #@4df
    cmp-long v15, v4, v16

    #@4e1
    if-gtz v15, :cond_2d

    #@4e3
    .line 1567
    const-string/jumbo v15, "lastRoamingFailure since <incorrect> "

    #@4e6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e9
    .line 1573
    .end local v4    # "diff":J
    :cond_29
    :goto_f
    const-string/jumbo v15, "roamingFailureBlackListTimeMilli: "

    #@4ec
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ef
    move-result-object v15

    #@4f0
    .line 1574
    move-object/from16 v0, p0

    #@4f2
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@4f4
    move-wide/from16 v16, v0

    #@4f6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4f9
    move-result-object v16

    #@4fa
    .line 1573
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fd
    .line 1575
    const/16 v15, 0xa

    #@4ff
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@502
    .line 1576
    move-object/from16 v0, p0

    #@504
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@506
    if-eqz v15, :cond_2e

    #@508
    .line 1577
    move-object/from16 v0, p0

    #@50a
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@50c
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@50f
    move-result-object v15

    #@510
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@513
    move-result-object v9

    #@514
    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@517
    move-result v15

    #@518
    if-eqz v15, :cond_2e

    #@51a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51d
    move-result-object v8

    #@51e
    check-cast v8, Ljava/lang/String;

    #@520
    .line 1578
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v15, " linked: "

    #@523
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@526
    move-result-object v15

    #@527
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52a
    .line 1579
    const/16 v15, 0xa

    #@52c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@52f
    goto :goto_10

    #@530
    .line 1532
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    .restart local v4    # "diff":J
    :cond_2a
    const-string/jumbo v15, " blackListed: "

    #@533
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@536
    move-result-object v15

    #@537
    const-wide/16 v16, 0x3e8

    #@539
    div-long v16, v4, v16

    #@53b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@53e
    move-result-object v16

    #@53f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@542
    move-result-object v15

    #@543
    const-string/jumbo v16, "sec "

    #@546
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@549
    goto/16 :goto_c

    #@54b
    .line 1550
    :cond_2b
    const-string/jumbo v15, "lastConnected: "

    #@54e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@551
    move-result-object v15

    #@552
    const-wide/16 v16, 0x3e8

    #@554
    div-long v16, v4, v16

    #@556
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@559
    move-result-object v16

    #@55a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55d
    move-result-object v15

    #@55e
    const-string/jumbo v16, "sec "

    #@561
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@564
    goto/16 :goto_d

    #@566
    .line 1559
    :cond_2c
    const-string/jumbo v15, "lastConnectionFailure: "

    #@569
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56c
    move-result-object v15

    #@56d
    const-wide/16 v16, 0x3e8

    #@56f
    div-long v16, v4, v16

    #@571
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@574
    move-result-object v16

    #@575
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@578
    .line 1560
    const-string/jumbo v15, "sec "

    #@57b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57e
    goto/16 :goto_e

    #@580
    .line 1569
    :cond_2d
    const-string/jumbo v15, "lastRoamingFailure: "

    #@583
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@586
    move-result-object v15

    #@587
    const-wide/16 v16, 0x3e8

    #@589
    div-long v16, v4, v16

    #@58b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@58e
    move-result-object v16

    #@58f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@592
    .line 1570
    const-string/jumbo v15, "sec "

    #@595
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@598
    goto/16 :goto_f

    #@59a
    .line 1582
    .end local v4    # "diff":J
    :cond_2e
    const-string/jumbo v15, "triggeredLow: "

    #@59d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a0
    move-result-object v15

    #@5a1
    move-object/from16 v0, p0

    #@5a3
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@5a5
    move/from16 v16, v0

    #@5a7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5aa
    .line 1583
    const-string/jumbo v15, " triggeredBad: "

    #@5ad
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b0
    move-result-object v15

    #@5b1
    move-object/from16 v0, p0

    #@5b3
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@5b5
    move/from16 v16, v0

    #@5b7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ba
    .line 1584
    const-string/jumbo v15, " triggeredNotHigh: "

    #@5bd
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c0
    move-result-object v15

    #@5c1
    move-object/from16 v0, p0

    #@5c3
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@5c5
    move/from16 v16, v0

    #@5c7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ca
    .line 1585
    const/16 v15, 0xa

    #@5cc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5cf
    .line 1586
    const-string/jumbo v15, "ticksLow: "

    #@5d2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d5
    move-result-object v15

    #@5d6
    move-object/from16 v0, p0

    #@5d8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@5da
    move/from16 v16, v0

    #@5dc
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5df
    .line 1587
    const-string/jumbo v15, " ticksBad: "

    #@5e2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e5
    move-result-object v15

    #@5e6
    move-object/from16 v0, p0

    #@5e8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@5ea
    move/from16 v16, v0

    #@5ec
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ef
    .line 1588
    const-string/jumbo v15, " ticksNotHigh: "

    #@5f2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f5
    move-result-object v15

    #@5f6
    move-object/from16 v0, p0

    #@5f8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@5fa
    move/from16 v16, v0

    #@5fc
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5ff
    .line 1589
    const/16 v15, 0xa

    #@601
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@604
    .line 1590
    const-string/jumbo v15, "triggeredJoin: "

    #@607
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60a
    move-result-object v15

    #@60b
    move-object/from16 v0, p0

    #@60d
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@60f
    move/from16 v16, v0

    #@611
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@614
    .line 1591
    const/16 v15, 0xa

    #@616
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@619
    .line 1593
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@61c
    move-result-object v15

    #@61d
    return-object v15
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1916
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1917
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1918
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    #@e
    invoke-virtual {v3, p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->writeToParcel(Landroid/os/Parcel;)V

    #@11
    .line 1919
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1920
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1921
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@1d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1922
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@22
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1923
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 1924
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@2c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 1925
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@31
    array-length v3, v3

    #@32
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@35
    .line 1926
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@37
    array-length v7, v6

    #@38
    move v3, v5

    #@39
    :goto_0
    if-ge v3, v7, :cond_0

    #@3b
    aget-wide v0, v6, v3

    #@3d
    .line 1927
    .local v0, "roamingConsortiumId":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@40
    .line 1926
    add-int/lit8 v3, v3, 0x1

    #@42
    goto :goto_0

    #@43
    .line 1929
    .end local v0    # "roamingConsortiumId":J
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@45
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@48
    .line 1930
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4a
    array-length v7, v6

    #@4b
    move v3, v5

    #@4c
    :goto_1
    if-ge v3, v7, :cond_1

    #@4e
    aget-object v2, v6, v3

    #@50
    .line 1931
    .local v2, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@53
    .line 1930
    add-int/lit8 v3, v3, 0x1

    #@55
    goto :goto_1

    #@56
    .line 1933
    .end local v2    # "wepKey":Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@58
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@5b
    .line 1934
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@5d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 1935
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@62
    if-eqz v3, :cond_2

    #@64
    move v3, v4

    #@65
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@68
    .line 1936
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@6a
    if-eqz v3, :cond_3

    #@6c
    move v3, v4

    #@6d
    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@70
    .line 1937
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@72
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@75
    .line 1939
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@77
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@7a
    .line 1940
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@7c
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@7f
    .line 1941
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@81
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@84
    .line 1942
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@86
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@89
    .line 1943
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@8b
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@8e
    .line 1945
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@90
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@93
    .line 1947
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@95
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@98
    .line 1948
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    #@9a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@9d
    .line 1949
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@9f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a2
    .line 1950
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@a4
    if-eqz v3, :cond_4

    #@a6
    move v3, v4

    #@a7
    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@aa
    .line 1951
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@ac
    if-eqz v3, :cond_5

    #@ae
    move v3, v4

    #@af
    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b2
    .line 1952
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@b4
    if-eqz v3, :cond_6

    #@b6
    move v3, v4

    #@b7
    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ba
    .line 1953
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@bc
    if-eqz v3, :cond_7

    #@be
    move v3, v4

    #@bf
    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c2
    .line 1954
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    #@c4
    if-eqz v3, :cond_8

    #@c6
    move v3, v4

    #@c7
    :goto_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ca
    .line 1955
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    #@cc
    if-eqz v3, :cond_9

    #@ce
    move v3, v4

    #@cf
    :goto_9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d2
    .line 1956
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@d4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d7
    .line 1957
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@d9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@dc
    .line 1958
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@de
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@e1
    .line 1959
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@e3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e6
    .line 1960
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@e8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@eb
    .line 1961
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@ed
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@f0
    .line 1962
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@f2
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@f5
    .line 1963
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@f7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@fa
    .line 1964
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@fc
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@ff
    .line 1965
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@101
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@104
    .line 1966
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@106
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@109
    .line 1967
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@10b
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10e
    .line 1968
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@110
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@113
    .line 1969
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@115
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@118
    .line 1970
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@11a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11d
    .line 1971
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@11f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@122
    .line 1972
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@124
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@127
    .line 1973
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@129
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12c
    .line 1974
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@12e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@131
    .line 1975
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@133
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@136
    .line 1976
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@138
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13b
    .line 1977
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@13d
    if-eqz v3, :cond_a

    #@13f
    move v3, v4

    #@140
    :goto_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@143
    .line 1978
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    #@145
    if-eqz v3, :cond_b

    #@147
    :goto_b
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@14a
    .line 1979
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    #@14c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14f
    .line 1915
    return-void

    #@150
    :cond_2
    move v3, v5

    #@151
    .line 1935
    goto/16 :goto_2

    #@153
    :cond_3
    move v3, v5

    #@154
    .line 1936
    goto/16 :goto_3

    #@156
    :cond_4
    move v3, v5

    #@157
    .line 1950
    goto/16 :goto_4

    #@159
    :cond_5
    move v3, v5

    #@15a
    .line 1951
    goto/16 :goto_5

    #@15c
    :cond_6
    move v3, v5

    #@15d
    .line 1952
    goto/16 :goto_6

    #@15f
    :cond_7
    move v3, v5

    #@160
    .line 1953
    goto/16 :goto_7

    #@162
    :cond_8
    move v3, v5

    #@163
    .line 1954
    goto/16 :goto_8

    #@165
    :cond_9
    move v3, v5

    #@166
    .line 1955
    goto/16 :goto_9

    #@168
    :cond_a
    move v3, v5

    #@169
    .line 1977
    goto :goto_a

    #@16a
    :cond_b
    move v4, v5

    #@16b
    .line 1978
    goto :goto_b
.end method
