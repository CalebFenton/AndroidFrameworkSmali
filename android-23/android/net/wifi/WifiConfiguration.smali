.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$Visibility;,
        Landroid/net/wifi/WifiConfiguration$1;
    }
.end annotation


# static fields
.field public static final AUTO_JOIN_DELETED:I = 0xc8

.field public static final AUTO_JOIN_DISABLED_NO_CREDENTIALS:I = 0xa0

.field public static final AUTO_JOIN_DISABLED_ON_AUTH_FAILURE:I = 0x80

.field public static final AUTO_JOIN_DISABLED_USER_ACTION:I = 0xa1

.field public static final AUTO_JOIN_ENABLED:I = 0x0

.field public static final AUTO_JOIN_TEMPORARY_DISABLED:I = 0x1

.field public static final AUTO_JOIN_TEMPORARY_DISABLED_AT_SUPPLICANT:I = 0x40

.field public static final AUTO_JOIN_TEMPORARY_DISABLED_LINK_ERRORS:I = 0x20

.field public static A_BAND_PREFERENCE_RSSI_THRESHOLD:I = 0x0

.field public static BAD_RSSI_24:I = 0x0

.field public static BAD_RSSI_5:I = 0x0

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

.field public static final DISABLED_ASSOCIATION_REJECT:I = 0x4

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_BY_WIFI_MANAGER:I = 0x5

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static GOOD_RSSI_24:I = 0x0

.field public static GOOD_RSSI_5:I = 0x0

.field public static G_BAND_PREFERENCE_RSSI_THRESHOLD:I = 0x0

.field public static HOME_NETWORK_RSSI_BOOST:I = 0x0

.field public static INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I = 0x0

.field public static INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I = 0x0

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static LOW_RSSI_24:I = 0x0

.field public static LOW_RSSI_5:I = 0x0

.field public static MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I = 0x0

.field public static ROAMING_FAILURE_AUTH_FAILURE:I = 0x0

.field public static ROAMING_FAILURE_IP_CONFIG:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static UNBLACKLIST_THRESHOLD_24_HARD:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_24_SOFT:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_5_HARD:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_5_SOFT:I = 0x0

.field public static final UNKNOWN_UID:I = -0x1

.field public static UNWANTED_BLACKLIST_HARD_BUMP:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_BUMP:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_RSSI_24:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_RSSI_5:I = 0x0

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

.field public autoJoinBSSID:Ljava/lang/String;

.field public autoJoinBailedDueToLowRssi:Z

.field public autoJoinStatus:I

.field public autoJoinUseAggressiveJoinAttemptThreshold:I

.field public blackListTimestamp:J

.field public connectChoices:Ljava/util/HashMap;
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

.field public creationTime:Ljava/lang/String;

.field public creatorName:Ljava/lang/String;

.field public creatorUid:I

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public dirty:Z

.field public disableReason:I

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

.field public networkId:I

.field public noInternetAccessExpected:Z

.field public numAssociation:I

.field public numAuthFailures:I

.field public numConnectionFailures:I

.field public numIpConfigFailures:I

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

.field public status:I

.field public updateIdentifier:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public userApproved:I

.field public validatedInternetAccess:Z

.field public visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static synthetic -set0(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

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
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/16 v6, -0x41

    #@3
    const/16 v5, -0x46

    #@5
    const/16 v4, -0x4d

    #@7
    const/16 v3, -0x50

    #@9
    .line 50
    const/4 v0, 0x4

    #@a
    new-array v0, v0, [Ljava/lang/String;

    #@c
    const-string/jumbo v1, "wep_key0"

    #@f
    const/4 v2, 0x0

    #@10
    aput-object v1, v0, v2

    #@12
    const-string/jumbo v1, "wep_key1"

    #@15
    aput-object v1, v0, v7

    #@17
    const-string/jumbo v1, "wep_key2"

    #@1a
    const/4 v2, 0x2

    #@1b
    aput-object v1, v0, v2

    #@1d
    const-string/jumbo v1, "wep_key3"

    #@20
    const/4 v2, 0x3

    #@21
    aput-object v1, v0, v2

    #@23
    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    #@25
    .line 445
    const/16 v0, -0x7f

    #@27
    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    #@29
    .line 448
    sput v3, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    #@2b
    .line 451
    sput v5, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    #@2d
    .line 454
    sput v6, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    #@2f
    .line 457
    sput v4, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    #@31
    .line 460
    const/16 v0, -0x57

    #@33
    sput v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    #@35
    .line 463
    const/16 v0, -0x3c

    #@37
    sput v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    #@39
    .line 466
    const/16 v0, -0x48

    #@3b
    sput v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    #@3d
    .line 469
    const/16 v0, -0x52

    #@3f
    sput v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    #@41
    .line 472
    const/4 v0, 0x4

    #@42
    sput v0, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    #@44
    .line 475
    const/16 v0, 0x8

    #@46
    sput v0, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    #@48
    .line 478
    sput v4, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    #@4a
    .line 481
    const/16 v0, -0x44

    #@4c
    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    #@4e
    .line 484
    const/16 v0, -0x3f

    #@50
    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    #@52
    .line 487
    const/16 v0, -0x38

    #@54
    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    #@56
    .line 490
    sput v3, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    #@58
    .line 493
    sput v5, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    #@5a
    .line 497
    sput v6, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    #@5c
    .line 501
    const/16 v0, -0x4b

    #@5e
    sput v0, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    #@60
    .line 510
    const/4 v0, 0x5

    #@61
    sput v0, Landroid/net/wifi/WifiConfiguration;->HOME_NETWORK_RSSI_BOOST:I

    #@63
    .line 516
    const/16 v0, 0x8

    #@65
    sput v0, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    #@67
    .line 742
    sput v7, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    #@69
    .line 744
    const/4 v0, 0x2

    #@6a
    sput v0, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    #@6c
    .line 1608
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    #@6e
    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    #@71
    .line 1607
    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    #@73
    .line 41
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
    .line 905
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 248
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@8
    .line 257
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@a
    .line 432
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@c
    .line 751
    const-wide/16 v2, 0x3e8

    #@e
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@10
    .line 906
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@12
    .line 907
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@14
    .line 908
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@16
    .line 909
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@18
    .line 910
    new-array v1, v4, [J

    #@1a
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@1c
    .line 911
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@1e
    .line 912
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@20
    .line 913
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@22
    .line 914
    new-instance v1, Ljava/util/BitSet;

    #@24
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@27
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@29
    .line 915
    new-instance v1, Ljava/util/BitSet;

    #@2b
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@2e
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@30
    .line 916
    new-instance v1, Ljava/util/BitSet;

    #@32
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@35
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@37
    .line 917
    new-instance v1, Ljava/util/BitSet;

    #@39
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@3c
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@3e
    .line 918
    new-instance v1, Ljava/util/BitSet;

    #@40
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@43
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@45
    .line 919
    const/4 v1, 0x4

    #@46
    new-array v1, v1, [Ljava/lang/String;

    #@48
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4a
    .line 920
    const/4 v0, 0x0

    #@4b
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4d
    array-length v1, v1

    #@4e
    if-ge v0, v1, :cond_0

    #@50
    .line 921
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@52
    aput-object v5, v1, v0

    #@54
    .line 920
    add-int/lit8 v0, v0, 0x1

    #@56
    goto :goto_0

    #@57
    .line 923
    :cond_0
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    #@59
    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    #@5c
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@5e
    .line 924
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@60
    .line 925
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@62
    .line 926
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@64
    .line 927
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@66
    .line 928
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@68
    .line 929
    new-instance v1, Landroid/net/IpConfiguration;

    #@6a
    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    #@6d
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@6f
    .line 930
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@71
    .line 931
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@73
    .line 905
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
    .line 1432
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 248
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@7
    .line 257
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@9
    .line 432
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@b
    .line 751
    const-wide/16 v2, 0x3e8

    #@d
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@f
    .line 1433
    if-eqz p1, :cond_4

    #@11
    .line 1434
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@13
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@15
    .line 1435
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    #@17
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@19
    .line 1436
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@1b
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@1d
    .line 1437
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@1f
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@21
    .line 1438
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@23
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@25
    .line 1439
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@27
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@29
    .line 1440
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2b
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2d
    .line 1441
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@2f
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, [J

    #@35
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@37
    .line 1442
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@39
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3b
    .line 1443
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@3d
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@3f
    .line 1445
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@41
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@43
    .line 1446
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@45
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@47
    .line 1448
    const/4 v1, 0x4

    #@48
    new-array v1, v1, [Ljava/lang/String;

    #@4a
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4c
    .line 1449
    const/4 v0, 0x0

    #@4d
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4f
    array-length v1, v1

    #@50
    if-ge v0, v1, :cond_0

    #@52
    .line 1450
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@54
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@56
    aget-object v2, v2, v0

    #@58
    aput-object v2, v1, v0

    #@5a
    .line 1449
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 1453
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@5f
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@61
    .line 1454
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@63
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@65
    .line 1455
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@67
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@69
    .line 1456
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@6b
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@6e
    move-result-object v1

    #@6f
    check-cast v1, Ljava/util/BitSet;

    #@71
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@73
    .line 1457
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@75
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@78
    move-result-object v1

    #@79
    check-cast v1, Ljava/util/BitSet;

    #@7b
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@7d
    .line 1458
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@7f
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@82
    move-result-object v1

    #@83
    check-cast v1, Ljava/util/BitSet;

    #@85
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@87
    .line 1459
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@89
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@8c
    move-result-object v1

    #@8d
    check-cast v1, Ljava/util/BitSet;

    #@8f
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@91
    .line 1460
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@93
    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@96
    move-result-object v1

    #@97
    check-cast v1, Ljava/util/BitSet;

    #@99
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@9b
    .line 1462
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    #@9d
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@9f
    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    #@a2
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@a4
    .line 1464
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@a6
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@a8
    .line 1466
    new-instance v1, Landroid/net/IpConfiguration;

    #@aa
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@ac
    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    #@af
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@b1
    .line 1468
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@b3
    if-eqz v1, :cond_1

    #@b5
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@b7
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@ba
    move-result v1

    #@bb
    if-lez v1, :cond_1

    #@bd
    .line 1469
    new-instance v1, Ljava/util/HashMap;

    #@bf
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@c2
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@c4
    .line 1470
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@c6
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@c8
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@cb
    .line 1473
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@cd
    if-eqz v1, :cond_2

    #@cf
    .line 1474
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@d1
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    #@d4
    move-result v1

    #@d5
    if-lez v1, :cond_2

    #@d7
    .line 1475
    new-instance v1, Ljava/util/HashMap;

    #@d9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@dc
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@de
    .line 1476
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@e0
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@e2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    #@e5
    .line 1478
    :cond_2
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@e7
    .line 1479
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@e9
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@eb
    .line 1480
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@ed
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@ef
    .line 1481
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@f1
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@f3
    .line 1482
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@f5
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@f7
    .line 1483
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@f9
    if-eqz v1, :cond_3

    #@fb
    .line 1484
    new-instance v1, Landroid/net/wifi/WifiConfiguration$Visibility;

    #@fd
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@ff
    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    #@102
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@104
    .line 1487
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@106
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    #@108
    .line 1488
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@10a
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@10c
    .line 1489
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@10e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@110
    .line 1490
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@112
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@114
    .line 1491
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@116
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@118
    .line 1492
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@11a
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@11c
    .line 1493
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@11e
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@120
    .line 1494
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@122
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    #@124
    .line 1495
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@126
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@128
    .line 1496
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@12a
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@12c
    .line 1497
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    #@12e
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    #@130
    .line 1498
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@132
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@134
    .line 1499
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@136
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@138
    .line 1500
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@13a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@13c
    .line 1501
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@13e
    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@140
    .line 1502
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@142
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@144
    .line 1503
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@146
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@148
    .line 1504
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@14a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@14c
    .line 1505
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@14e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@150
    .line 1506
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@152
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@154
    .line 1507
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@156
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@158
    .line 1508
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@15a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@15c
    .line 1509
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@15e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@160
    .line 1510
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@162
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@164
    .line 1511
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@166
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@168
    .line 1512
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@16a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@16c
    .line 1513
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@16e
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@170
    .line 1514
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@172
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@174
    .line 1515
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@176
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@178
    .line 1517
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@17a
    .line 1516
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@17c
    .line 1518
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@17e
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@180
    .line 1519
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@182
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@184
    .line 1520
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@186
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@188
    .line 1521
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@18a
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@18c
    .line 1522
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@18e
    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@190
    .line 1523
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@192
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@194
    .line 1524
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@196
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@198
    .line 1432
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method public static configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    #@0
    .prologue
    .line 1353
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v2, "\""

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v1

    #@c
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    const-string/jumbo v2, "\""

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 1355
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@1f
    const-string/jumbo v2, "WEP"

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@25
    move-result v1

    #@26
    if-eqz v1, :cond_0

    #@28
    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v1

    #@31
    const-string/jumbo v2, "-WEP"

    #@34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v1

    #@38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 1359
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@3e
    const-string/jumbo v2, "PSK"

    #@41
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@44
    move-result v1

    #@45
    if-eqz v1, :cond_1

    #@47
    .line 1360
    new-instance v1, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v1

    #@50
    const-string/jumbo v2, "-"

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@59
    const/4 v3, 0x1

    #@5a
    aget-object v2, v2, v3

    #@5c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v1

    #@60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@63
    move-result-object v0

    #@64
    .line 1363
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    #@66
    const-string/jumbo v2, "EAP"

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@6c
    move-result v1

    #@6d
    if-eqz v1, :cond_2

    #@6f
    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v1

    #@78
    const-string/jumbo v2, "-"

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v1

    #@7f
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@81
    const/4 v3, 0x2

    #@82
    aget-object v2, v2, v3

    #@84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v1

    #@88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8b
    move-result-object v0

    #@8c
    .line 1367
    :cond_2
    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1273
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    .line 1275
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    #@6
    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    #@9
    .line 1276
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    #@c
    .line 1277
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v3

    #@10
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    #@13
    .line 1276
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1280
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1269
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
    .line 1219
    packed-switch p0, :pswitch_data_0

    #@3
    .line 1227
    const-string/jumbo v0, "INVALID"

    #@6
    return-object v0

    #@7
    .line 1221
    :pswitch_0
    const-string/jumbo v0, "USER_APPROVED"

    #@a
    return-object v0

    #@b
    .line 1223
    :pswitch_1
    const-string/jumbo v0, "USER_BANNED"

    #@e
    return-object v0

    #@f
    .line 1225
    :pswitch_2
    const-string/jumbo v0, "USER_UNSPECIFIED"

    #@12
    return-object v0

    #@13
    .line 1219
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
    .line 1284
    const/4 v0, -0x1

    #@1
    .line 1286
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    #@4
    move-result v1

    #@5
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    #@8
    .line 1288
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
    .line 1289
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    goto :goto_0

    #@15
    .line 1283
    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1346
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
    .line 1322
    if-eqz p1, :cond_0

    #@5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 1323
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@b
    .line 1339
    .local v0, "key":Ljava/lang/String;
    :goto_0
    return-object v0

    #@c
    .line 1324
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 1325
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
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    #@28
    .line 1327
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2a
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    #@2d
    move-result v1

    #@2e
    if-eqz v1, :cond_2

    #@30
    .line 1328
    new-instance v1, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v1

    #@3b
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@3d
    aget-object v2, v2, v5

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v1

    #@43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    .line 1337
    .restart local v0    # "key":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    #@49
    goto :goto_0

    #@4a
    .line 1329
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@4c
    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    #@4f
    move-result v1

    #@50
    if-nez v1, :cond_3

    #@52
    .line 1330
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@54
    const/4 v2, 0x3

    #@55
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@58
    move-result v1

    #@59
    .line 1329
    if-eqz v1, :cond_4

    #@5b
    .line 1331
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@60
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@68
    aget-object v2, v2, v3

    #@6a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v1

    #@6e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@71
    move-result-object v0

    #@72
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    #@73
    .line 1332
    .end local v0    # "key":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@75
    aget-object v1, v1, v4

    #@77
    if-eqz v1, :cond_5

    #@79
    .line 1333
    new-instance v1, Ljava/lang/StringBuilder;

    #@7b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7e
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v1

    #@84
    const-string/jumbo v2, "WEP"

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v1

    #@8b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v0

    #@8f
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    #@90
    .line 1335
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v1

    #@9b
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@9d
    aget-object v2, v2, v4

    #@9f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v1

    #@a3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v0

    #@a7
    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1428
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
    .line 1295
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@6
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    #@9
    move-result v0

    #@a
    if-le v0, v1, :cond_0

    #@c
    .line 1296
    new-instance v0, Ljava/lang/IllegalStateException;

    #@e
    const-string/jumbo v1, "More than one auth type set"

    #@11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 1298
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@17
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_1

    #@1d
    .line 1299
    return v1

    #@1e
    .line 1300
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@20
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_2

    #@26
    .line 1301
    return v4

    #@27
    .line 1302
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@29
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 1303
    return v2

    #@30
    .line 1304
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@32
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_4

    #@38
    .line 1305
    return v3

    #@39
    .line 1307
    :cond_4
    const/4 v0, 0x0

    #@3a
    return v0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    #@0
    .prologue
    .line 1412
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
    .line 1392
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
    .line 1372
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
    .line 1240
    const/4 v1, 0x0

    #@2
    .line 1244
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
    .line 1245
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@10
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_1

    #@16
    .line 1246
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@18
    iput-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1a
    .line 1248
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
    .line 1249
    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@25
    const/4 v4, 0x2

    #@26
    aget-object v1, v3, v4

    #@28
    .line 1251
    .end local v1    # "keyMgmt":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@2a
    const/4 v4, 0x3

    #@2b
    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    #@2e
    move-result v3

    #@2f
    if-eqz v3, :cond_3

    #@31
    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@3c
    const/4 v5, 0x3

    #@3d
    aget-object v4, v4, v5

    #@3f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v1

    #@47
    .line 1255
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_4

    #@4d
    .line 1256
    new-instance v2, Ljava/lang/IllegalStateException;

    #@4f
    const-string/jumbo v3, "Not an EAP network"

    #@52
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@55
    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    .line 1262
    :catch_0
    move-exception v0

    #@57
    .line 1263
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@59
    const-string/jumbo v3, "Invalid config details"

    #@5c
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v2

    #@60
    .line 1259
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@67
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    #@6a
    move-result-object v4

    #@6b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    const-string/jumbo v4, "_"

    #@72
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v3

    #@7a
    const-string/jumbo v4, "_"

    #@7d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    .line 1260
    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@83
    if-eqz p1, :cond_5

    #@85
    .line 1261
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@87
    .line 1260
    :cond_5
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    .line 1259
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v2

    #@93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    #@96
    move-result-object v2

    #@97
    return-object v2
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
    .line 1198
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@7
    if-nez v2, :cond_0

    #@9
    const-string/jumbo v2, ""

    #@c
    return-object v2

    #@d
    .line 1199
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    .line 1200
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
    .line 1201
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
    .line 1208
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
    .line 1209
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
    .line 1211
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@51
    add-int/lit8 v3, v0, -0x1

    #@53
    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@56
    move-result-object v2

    #@57
    .line 1210
    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    #@5a
    move-result-object v1

    #@5b
    .line 1212
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    return-object v2

    #@60
    .line 1214
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
    .line 1402
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
    .line 1382
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
    .line 705
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
    .line 963
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
    .line 964
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@b
    const/4 v1, 0x3

    #@c
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    #@f
    move-result v0

    #@10
    .line 963
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
    .line 949
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 950
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@a
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    if-eqz v0, :cond_0

    #@14
    .line 951
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@16
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1d
    move-result-object v0

    #@1e
    if-eqz v0, :cond_0

    #@20
    .line 952
    const/4 v0, 0x1

    #@21
    return v0

    #@22
    .line 955
    :cond_0
    const/4 v0, 0x0

    #@23
    return v0
.end method

.method public isPasspoint()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 938
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 939
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 938
    :cond_0
    :goto_0
    return v0

    #@12
    .line 940
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@14
    if-eqz v1, :cond_0

    #@16
    .line 941
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

.method public setAutoJoinStatus(I)V
    .locals 2
    .param p1, "status"    # I

    #@0
    .prologue
    .line 969
    if-gez p1, :cond_0

    #@2
    const/4 p1, 0x0

    #@3
    .line 970
    :cond_0
    if-nez p1, :cond_3

    #@5
    .line 971
    const-wide/16 v0, 0x0

    #@7
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@9
    .line 975
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@b
    if-eq p1, v0, :cond_2

    #@d
    .line 976
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@f
    .line 977
    const/4 v0, 0x1

    #@10
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    #@12
    .line 968
    :cond_2
    return-void

    #@13
    .line 972
    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@15
    if-le p1, v0, :cond_1

    #@17
    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1a
    move-result-wide v0

    #@1b
    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@1d
    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 1417
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@4
    .line 1416
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    #@4
    .line 1396
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    #@0
    .prologue
    .line 1377
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    .line 1376
    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    #@0
    .prologue
    .line 1422
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@4
    .line 1423
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@6
    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    #@8
    .line 1421
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    #@0
    .prologue
    .line 1407
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    #@4
    .line 1406
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    #@0
    .prologue
    .line 1387
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@2
    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    #@5
    .line 1386
    return-void
.end method

.method public setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 0
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    #@0
    .prologue
    .line 600
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    #@2
    .line 599
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    #@0
    .prologue
    .line 983
    new-instance v14, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 984
    .local v14, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@7
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@9
    if-nez v15, :cond_11

    #@b
    .line 985
    const-string/jumbo v15, "* "

    #@e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    .line 989
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
    .line 990
    const-string/jumbo v16, " PROVIDER-NAME: "

    #@36
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v15

    #@3a
    .line 990
    move-object/from16 v0, p0

    #@3c
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@3e
    move-object/from16 v16, v0

    #@40
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v15

    #@44
    .line 991
    const-string/jumbo v16, " BSSID: "

    #@47
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v15

    #@4b
    .line 991
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@4f
    move-object/from16 v16, v0

    #@51
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v15

    #@55
    .line 991
    const-string/jumbo v16, " FQDN: "

    #@58
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v15

    #@5c
    .line 991
    move-object/from16 v0, p0

    #@5e
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@60
    move-object/from16 v16, v0

    #@62
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v15

    #@66
    .line 992
    const-string/jumbo v16, " PRIO: "

    #@69
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v15

    #@6d
    .line 992
    move-object/from16 v0, p0

    #@6f
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@71
    move/from16 v16, v0

    #@73
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@76
    move-result-object v15

    #@77
    .line 993
    const/16 v16, 0xa

    #@79
    .line 989
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    .line 994
    move-object/from16 v0, p0

    #@7e
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@80
    if-lez v15, :cond_1

    #@82
    .line 995
    const-string/jumbo v15, " numConnectFailures "

    #@85
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v15

    #@89
    move-object/from16 v0, p0

    #@8b
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@8d
    move/from16 v16, v0

    #@8f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@92
    move-result-object v15

    #@93
    const-string/jumbo v16, "\n"

    #@96
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@99
    .line 997
    :cond_1
    move-object/from16 v0, p0

    #@9b
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@9d
    if-lez v15, :cond_2

    #@9f
    .line 998
    const-string/jumbo v15, " numIpConfigFailures "

    #@a2
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v15

    #@a6
    move-object/from16 v0, p0

    #@a8
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@aa
    move/from16 v16, v0

    #@ac
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v15

    #@b0
    const-string/jumbo v16, "\n"

    #@b3
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    .line 1000
    :cond_2
    move-object/from16 v0, p0

    #@b8
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@ba
    if-lez v15, :cond_3

    #@bc
    .line 1001
    const-string/jumbo v15, " numAuthFailures "

    #@bf
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v15

    #@c3
    move-object/from16 v0, p0

    #@c5
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@c7
    move/from16 v16, v0

    #@c9
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v15

    #@cd
    const-string/jumbo v16, "\n"

    #@d0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d3
    .line 1003
    :cond_3
    move-object/from16 v0, p0

    #@d5
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@d7
    if-lez v15, :cond_4

    #@d9
    .line 1004
    const-string/jumbo v15, " autoJoinStatus "

    #@dc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@df
    move-result-object v15

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@e4
    move/from16 v16, v0

    #@e6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v15

    #@ea
    const-string/jumbo v16, "\n"

    #@ed
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f0
    .line 1006
    :cond_4
    move-object/from16 v0, p0

    #@f2
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@f4
    if-lez v15, :cond_5

    #@f6
    .line 1007
    const-string/jumbo v15, " disableReason "

    #@f9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fc
    move-result-object v15

    #@fd
    move-object/from16 v0, p0

    #@ff
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@101
    move/from16 v16, v0

    #@103
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@106
    move-result-object v15

    #@107
    const-string/jumbo v16, "\n"

    #@10a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    .line 1009
    :cond_5
    move-object/from16 v0, p0

    #@10f
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@111
    if-lez v15, :cond_6

    #@113
    .line 1010
    const-string/jumbo v15, " numAssociation "

    #@116
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v15

    #@11a
    move-object/from16 v0, p0

    #@11c
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@11e
    move/from16 v16, v0

    #@120
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@123
    move-result-object v15

    #@124
    const-string/jumbo v16, "\n"

    #@127
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12a
    .line 1012
    :cond_6
    move-object/from16 v0, p0

    #@12c
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@12e
    if-lez v15, :cond_7

    #@130
    .line 1013
    const-string/jumbo v15, " numNoInternetAccessReports "

    #@133
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@136
    .line 1014
    move-object/from16 v0, p0

    #@138
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@13a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13d
    move-result-object v15

    #@13e
    const-string/jumbo v16, "\n"

    #@141
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@144
    .line 1016
    :cond_7
    move-object/from16 v0, p0

    #@146
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@148
    if-eqz v15, :cond_8

    #@14a
    .line 1017
    const-string/jumbo v15, "update "

    #@14d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@150
    move-result-object v15

    #@151
    move-object/from16 v0, p0

    #@153
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    #@155
    move-object/from16 v16, v0

    #@157
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15a
    move-result-object v15

    #@15b
    const-string/jumbo v16, "\n"

    #@15e
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@161
    .line 1019
    :cond_8
    move-object/from16 v0, p0

    #@163
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@165
    if-eqz v15, :cond_9

    #@167
    .line 1020
    const-string/jumbo v15, "creation"

    #@16a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16d
    move-result-object v15

    #@16e
    move-object/from16 v0, p0

    #@170
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    #@172
    move-object/from16 v16, v0

    #@174
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@177
    move-result-object v15

    #@178
    const-string/jumbo v16, "\n"

    #@17b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17e
    .line 1022
    :cond_9
    move-object/from16 v0, p0

    #@180
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@182
    if-eqz v15, :cond_a

    #@184
    const-string/jumbo v15, " didSelfAdd"

    #@187
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18a
    .line 1023
    :cond_a
    move-object/from16 v0, p0

    #@18c
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@18e
    if-eqz v15, :cond_b

    #@190
    const-string/jumbo v15, " selfAdded"

    #@193
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@196
    .line 1024
    :cond_b
    move-object/from16 v0, p0

    #@198
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@19a
    if-eqz v15, :cond_c

    #@19c
    const-string/jumbo v15, " validatedInternetAccess"

    #@19f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a2
    .line 1025
    :cond_c
    move-object/from16 v0, p0

    #@1a4
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1a6
    if-eqz v15, :cond_d

    #@1a8
    const-string/jumbo v15, " ephemeral"

    #@1ab
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ae
    .line 1026
    :cond_d
    move-object/from16 v0, p0

    #@1b0
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@1b2
    if-nez v15, :cond_e

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@1b8
    if-nez v15, :cond_e

    #@1ba
    move-object/from16 v0, p0

    #@1bc
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@1be
    if-nez v15, :cond_e

    #@1c0
    move-object/from16 v0, p0

    #@1c2
    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@1c4
    if-eqz v15, :cond_f

    #@1c6
    .line 1027
    :cond_e
    const-string/jumbo v15, "\n"

    #@1c9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1cc
    .line 1029
    :cond_f
    const-string/jumbo v15, " KeyMgmt:"

    #@1cf
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d2
    .line 1030
    const/4 v7, 0x0

    #@1d3
    .local v7, "k":I
    :goto_1
    move-object/from16 v0, p0

    #@1d5
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1d7
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@1da
    move-result v15

    #@1db
    if-ge v7, v15, :cond_13

    #@1dd
    .line 1031
    move-object/from16 v0, p0

    #@1df
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@1e1
    invoke-virtual {v15, v7}, Ljava/util/BitSet;->get(I)Z

    #@1e4
    move-result v15

    #@1e5
    if-eqz v15, :cond_10

    #@1e7
    .line 1032
    const-string/jumbo v15, " "

    #@1ea
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ed
    .line 1033
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@1ef
    array-length v15, v15

    #@1f0
    if-ge v7, v15, :cond_12

    #@1f2
    .line 1034
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    #@1f4
    aget-object v15, v15, v7

    #@1f6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f9
    .line 1030
    :cond_10
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@1fb
    goto :goto_1

    #@1fc
    .line 986
    .end local v7    # "k":I
    :cond_11
    move-object/from16 v0, p0

    #@1fe
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@200
    const/16 v16, 0x1

    #@202
    move/from16 v0, v16

    #@204
    if-ne v15, v0, :cond_0

    #@206
    .line 987
    const-string/jumbo v15, "- DSBLE "

    #@209
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20c
    goto/16 :goto_0

    #@20e
    .line 1036
    .restart local v7    # "k":I
    :cond_12
    const-string/jumbo v15, "??"

    #@211
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@214
    goto :goto_2

    #@215
    .line 1040
    :cond_13
    const-string/jumbo v15, " Protocols:"

    #@218
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    .line 1041
    const/4 v12, 0x0

    #@21c
    .local v12, "p":I
    :goto_3
    move-object/from16 v0, p0

    #@21e
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@220
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@223
    move-result v15

    #@224
    if-ge v12, v15, :cond_16

    #@226
    .line 1042
    move-object/from16 v0, p0

    #@228
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@22a
    invoke-virtual {v15, v12}, Ljava/util/BitSet;->get(I)Z

    #@22d
    move-result v15

    #@22e
    if-eqz v15, :cond_14

    #@230
    .line 1043
    const-string/jumbo v15, " "

    #@233
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    .line 1044
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@238
    array-length v15, v15

    #@239
    if-ge v12, v15, :cond_15

    #@23b
    .line 1045
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    #@23d
    aget-object v15, v15, v12

    #@23f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@242
    .line 1041
    :cond_14
    :goto_4
    add-int/lit8 v12, v12, 0x1

    #@244
    goto :goto_3

    #@245
    .line 1047
    :cond_15
    const-string/jumbo v15, "??"

    #@248
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24b
    goto :goto_4

    #@24c
    .line 1051
    :cond_16
    const/16 v15, 0xa

    #@24e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@251
    .line 1052
    const-string/jumbo v15, " AuthAlgorithms:"

    #@254
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@257
    .line 1053
    const/4 v2, 0x0

    #@258
    .local v2, "a":I
    :goto_5
    move-object/from16 v0, p0

    #@25a
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@25c
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@25f
    move-result v15

    #@260
    if-ge v2, v15, :cond_19

    #@262
    .line 1054
    move-object/from16 v0, p0

    #@264
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@266
    invoke-virtual {v15, v2}, Ljava/util/BitSet;->get(I)Z

    #@269
    move-result v15

    #@26a
    if-eqz v15, :cond_17

    #@26c
    .line 1055
    const-string/jumbo v15, " "

    #@26f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@272
    .line 1056
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@274
    array-length v15, v15

    #@275
    if-ge v2, v15, :cond_18

    #@277
    .line 1057
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    #@279
    aget-object v15, v15, v2

    #@27b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    .line 1053
    :cond_17
    :goto_6
    add-int/lit8 v2, v2, 0x1

    #@280
    goto :goto_5

    #@281
    .line 1059
    :cond_18
    const-string/jumbo v15, "??"

    #@284
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@287
    goto :goto_6

    #@288
    .line 1063
    :cond_19
    const/16 v15, 0xa

    #@28a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@28d
    .line 1064
    const-string/jumbo v15, " PairwiseCiphers:"

    #@290
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    .line 1065
    const/4 v13, 0x0

    #@294
    .local v13, "pc":I
    :goto_7
    move-object/from16 v0, p0

    #@296
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@298
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@29b
    move-result v15

    #@29c
    if-ge v13, v15, :cond_1c

    #@29e
    .line 1066
    move-object/from16 v0, p0

    #@2a0
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@2a2
    invoke-virtual {v15, v13}, Ljava/util/BitSet;->get(I)Z

    #@2a5
    move-result v15

    #@2a6
    if-eqz v15, :cond_1a

    #@2a8
    .line 1067
    const-string/jumbo v15, " "

    #@2ab
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ae
    .line 1068
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@2b0
    array-length v15, v15

    #@2b1
    if-ge v13, v15, :cond_1b

    #@2b3
    .line 1069
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    #@2b5
    aget-object v15, v15, v13

    #@2b7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ba
    .line 1065
    :cond_1a
    :goto_8
    add-int/lit8 v13, v13, 0x1

    #@2bc
    goto :goto_7

    #@2bd
    .line 1071
    :cond_1b
    const-string/jumbo v15, "??"

    #@2c0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c3
    goto :goto_8

    #@2c4
    .line 1075
    :cond_1c
    const/16 v15, 0xa

    #@2c6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2c9
    .line 1076
    const-string/jumbo v15, " GroupCiphers:"

    #@2cc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    .line 1077
    const/4 v6, 0x0

    #@2d0
    .local v6, "gc":I
    :goto_9
    move-object/from16 v0, p0

    #@2d2
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@2d4
    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    #@2d7
    move-result v15

    #@2d8
    if-ge v6, v15, :cond_1f

    #@2da
    .line 1078
    move-object/from16 v0, p0

    #@2dc
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@2de
    invoke-virtual {v15, v6}, Ljava/util/BitSet;->get(I)Z

    #@2e1
    move-result v15

    #@2e2
    if-eqz v15, :cond_1d

    #@2e4
    .line 1079
    const-string/jumbo v15, " "

    #@2e7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ea
    .line 1080
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@2ec
    array-length v15, v15

    #@2ed
    if-ge v6, v15, :cond_1e

    #@2ef
    .line 1081
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    #@2f1
    aget-object v15, v15, v6

    #@2f3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f6
    .line 1077
    :cond_1d
    :goto_a
    add-int/lit8 v6, v6, 0x1

    #@2f8
    goto :goto_9

    #@2f9
    .line 1083
    :cond_1e
    const-string/jumbo v15, "??"

    #@2fc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ff
    goto :goto_a

    #@300
    .line 1087
    :cond_1f
    const/16 v15, 0xa

    #@302
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@305
    move-result-object v15

    #@306
    const-string/jumbo v16, " PSK: "

    #@309
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30c
    .line 1088
    move-object/from16 v0, p0

    #@30e
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@310
    if-eqz v15, :cond_20

    #@312
    .line 1089
    const/16 v15, 0x2a

    #@314
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@317
    .line 1091
    :cond_20
    const-string/jumbo v15, "\nEnterprise config:\n"

    #@31a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31d
    .line 1092
    move-object/from16 v0, p0

    #@31f
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@321
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@324
    .line 1094
    const-string/jumbo v15, "IP config:\n"

    #@327
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32a
    .line 1095
    move-object/from16 v0, p0

    #@32c
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@32e
    invoke-virtual {v15}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    #@331
    move-result-object v15

    #@332
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@335
    .line 1097
    move-object/from16 v0, p0

    #@337
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@339
    if-eqz v15, :cond_21

    #@33b
    const-string/jumbo v15, " autoJoinBSSID="

    #@33e
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@341
    move-result-object v15

    #@342
    move-object/from16 v0, p0

    #@344
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@346
    move-object/from16 v16, v0

    #@348
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34b
    .line 1098
    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@34e
    move-result-wide v10

    #@34f
    .line 1099
    .local v10, "now_ms":J
    move-object/from16 v0, p0

    #@351
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@353
    move-wide/from16 v16, v0

    #@355
    const-wide/16 v18, 0x0

    #@357
    cmp-long v15, v16, v18

    #@359
    if-eqz v15, :cond_22

    #@35b
    .line 1100
    const/16 v15, 0xa

    #@35d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@360
    .line 1101
    move-object/from16 v0, p0

    #@362
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@364
    move-wide/from16 v16, v0

    #@366
    sub-long v4, v10, v16

    #@368
    .line 1102
    .local v4, "diff":J
    const-wide/16 v16, 0x0

    #@36a
    cmp-long v15, v4, v16

    #@36c
    if-gtz v15, :cond_2a

    #@36e
    .line 1103
    const-string/jumbo v15, " blackListed since <incorrect>"

    #@371
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@374
    .line 1108
    .end local v4    # "diff":J
    :cond_22
    :goto_b
    move-object/from16 v0, p0

    #@376
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@378
    if-eqz v15, :cond_23

    #@37a
    const-string/jumbo v15, " cuid="

    #@37d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@380
    move-result-object v15

    #@381
    move-object/from16 v0, p0

    #@383
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@385
    move/from16 v16, v0

    #@387
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@38a
    move-result-object v16

    #@38b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38e
    .line 1109
    :cond_23
    move-object/from16 v0, p0

    #@390
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@392
    if-eqz v15, :cond_24

    #@394
    const-string/jumbo v15, " cname="

    #@397
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39a
    move-result-object v15

    #@39b
    move-object/from16 v0, p0

    #@39d
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@39f
    move-object/from16 v16, v0

    #@3a1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a4
    .line 1110
    :cond_24
    move-object/from16 v0, p0

    #@3a6
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@3a8
    if-eqz v15, :cond_25

    #@3aa
    const-string/jumbo v15, " luid="

    #@3ad
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b0
    move-result-object v15

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@3b5
    move/from16 v16, v0

    #@3b7
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3ba
    .line 1111
    :cond_25
    move-object/from16 v0, p0

    #@3bc
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@3be
    if-eqz v15, :cond_26

    #@3c0
    const-string/jumbo v15, " lname="

    #@3c3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c6
    move-result-object v15

    #@3c7
    move-object/from16 v0, p0

    #@3c9
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@3cb
    move-object/from16 v16, v0

    #@3cd
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d0
    .line 1112
    :cond_26
    const-string/jumbo v15, " lcuid="

    #@3d3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d6
    move-result-object v15

    #@3d7
    move-object/from16 v0, p0

    #@3d9
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@3db
    move/from16 v16, v0

    #@3dd
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@3e0
    .line 1113
    const-string/jumbo v15, " userApproved="

    #@3e3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e6
    move-result-object v15

    #@3e7
    move-object/from16 v0, p0

    #@3e9
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@3eb
    move/from16 v16, v0

    #@3ed
    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    #@3f0
    move-result-object v16

    #@3f1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f4
    .line 1114
    const-string/jumbo v15, " noInternetAccessExpected="

    #@3f7
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3fa
    move-result-object v15

    #@3fb
    move-object/from16 v0, p0

    #@3fd
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@3ff
    move/from16 v16, v0

    #@401
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@404
    .line 1115
    const-string/jumbo v15, " "

    #@407
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40a
    .line 1117
    move-object/from16 v0, p0

    #@40c
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@40e
    move-wide/from16 v16, v0

    #@410
    const-wide/16 v18, 0x0

    #@412
    cmp-long v15, v16, v18

    #@414
    if-eqz v15, :cond_27

    #@416
    .line 1118
    const/16 v15, 0xa

    #@418
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41b
    .line 1119
    move-object/from16 v0, p0

    #@41d
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    #@41f
    move-wide/from16 v16, v0

    #@421
    sub-long v4, v10, v16

    #@423
    .line 1120
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    #@425
    cmp-long v15, v4, v16

    #@427
    if-gtz v15, :cond_2b

    #@429
    .line 1121
    const-string/jumbo v15, "lastConnected since <incorrect>"

    #@42c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42f
    .line 1126
    .end local v4    # "diff":J
    :cond_27
    :goto_c
    move-object/from16 v0, p0

    #@431
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@433
    move-wide/from16 v16, v0

    #@435
    const-wide/16 v18, 0x0

    #@437
    cmp-long v15, v16, v18

    #@439
    if-eqz v15, :cond_28

    #@43b
    .line 1127
    const/16 v15, 0xa

    #@43d
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@440
    .line 1128
    move-object/from16 v0, p0

    #@442
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@444
    move-wide/from16 v16, v0

    #@446
    sub-long v4, v10, v16

    #@448
    .line 1129
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    #@44a
    cmp-long v15, v4, v16

    #@44c
    if-gtz v15, :cond_2c

    #@44e
    .line 1130
    const-string/jumbo v15, "lastConnectionFailure since <incorrect> "

    #@451
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@454
    .line 1136
    .end local v4    # "diff":J
    :cond_28
    :goto_d
    move-object/from16 v0, p0

    #@456
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@458
    move-wide/from16 v16, v0

    #@45a
    const-wide/16 v18, 0x0

    #@45c
    cmp-long v15, v16, v18

    #@45e
    if-eqz v15, :cond_29

    #@460
    .line 1137
    const/16 v15, 0xa

    #@462
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@465
    .line 1138
    move-object/from16 v0, p0

    #@467
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@469
    move-wide/from16 v16, v0

    #@46b
    sub-long v4, v10, v16

    #@46d
    .line 1139
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    #@46f
    cmp-long v15, v4, v16

    #@471
    if-gtz v15, :cond_2d

    #@473
    .line 1140
    const-string/jumbo v15, "lastRoamingFailure since <incorrect> "

    #@476
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@479
    .line 1146
    .end local v4    # "diff":J
    :cond_29
    :goto_e
    const-string/jumbo v15, "roamingFailureBlackListTimeMilli: "

    #@47c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47f
    move-result-object v15

    #@480
    .line 1147
    move-object/from16 v0, p0

    #@482
    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@484
    move-wide/from16 v16, v0

    #@486
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@489
    move-result-object v16

    #@48a
    .line 1146
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48d
    .line 1148
    const/16 v15, 0xa

    #@48f
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@492
    .line 1149
    move-object/from16 v0, p0

    #@494
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@496
    if-eqz v15, :cond_2e

    #@498
    .line 1150
    move-object/from16 v0, p0

    #@49a
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    #@49c
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@49f
    move-result-object v15

    #@4a0
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4a3
    move-result-object v9

    #@4a4
    .local v9, "key$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@4a7
    move-result v15

    #@4a8
    if-eqz v15, :cond_2e

    #@4aa
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4ad
    move-result-object v8

    #@4ae
    check-cast v8, Ljava/lang/String;

    #@4b0
    .line 1151
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v15, " linked: "

    #@4b3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b6
    move-result-object v15

    #@4b7
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ba
    .line 1152
    const/16 v15, 0xa

    #@4bc
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@4bf
    goto :goto_f

    #@4c0
    .line 1105
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    .restart local v4    # "diff":J
    :cond_2a
    const-string/jumbo v15, " blackListed: "

    #@4c3
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c6
    move-result-object v15

    #@4c7
    const-wide/16 v16, 0x3e8

    #@4c9
    div-long v16, v4, v16

    #@4cb
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4ce
    move-result-object v16

    #@4cf
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d2
    move-result-object v15

    #@4d3
    const-string/jumbo v16, "sec "

    #@4d6
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d9
    goto/16 :goto_b

    #@4db
    .line 1123
    :cond_2b
    const-string/jumbo v15, "lastConnected: "

    #@4de
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e1
    move-result-object v15

    #@4e2
    const-wide/16 v16, 0x3e8

    #@4e4
    div-long v16, v4, v16

    #@4e6
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@4e9
    move-result-object v16

    #@4ea
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4ed
    move-result-object v15

    #@4ee
    const-string/jumbo v16, "sec "

    #@4f1
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f4
    goto/16 :goto_c

    #@4f6
    .line 1132
    :cond_2c
    const-string/jumbo v15, "lastConnectionFailure: "

    #@4f9
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4fc
    move-result-object v15

    #@4fd
    const-wide/16 v16, 0x3e8

    #@4ff
    div-long v16, v4, v16

    #@501
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@504
    move-result-object v16

    #@505
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@508
    .line 1133
    const-string/jumbo v15, "sec "

    #@50b
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50e
    goto/16 :goto_d

    #@510
    .line 1142
    :cond_2d
    const-string/jumbo v15, "lastRoamingFailure: "

    #@513
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@516
    move-result-object v15

    #@517
    const-wide/16 v16, 0x3e8

    #@519
    div-long v16, v4, v16

    #@51b
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@51e
    move-result-object v16

    #@51f
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@522
    .line 1143
    const-string/jumbo v15, "sec "

    #@525
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@528
    goto/16 :goto_e

    #@52a
    .line 1155
    .end local v4    # "diff":J
    :cond_2e
    move-object/from16 v0, p0

    #@52c
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@52e
    if-eqz v15, :cond_30

    #@530
    .line 1156
    move-object/from16 v0, p0

    #@532
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@534
    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    #@537
    move-result-object v15

    #@538
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53b
    move-result-object v9

    #@53c
    .restart local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_2f
    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    #@53f
    move-result v15

    #@540
    if-eqz v15, :cond_30

    #@542
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@545
    move-result-object v8

    #@546
    check-cast v8, Ljava/lang/String;

    #@548
    .line 1157
    .restart local v8    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    #@54a
    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    #@54c
    invoke-virtual {v15, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@54f
    move-result-object v3

    #@550
    check-cast v3, Ljava/lang/Integer;

    #@552
    .line 1158
    .local v3, "choice":Ljava/lang/Integer;
    if-eqz v3, :cond_2f

    #@554
    .line 1159
    const-string/jumbo v15, " choice: "

    #@557
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55a
    move-result-object v15

    #@55b
    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55e
    .line 1160
    const-string/jumbo v15, " = "

    #@561
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@564
    move-result-object v15

    #@565
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@568
    .line 1161
    const/16 v15, 0xa

    #@56a
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@56d
    goto :goto_10

    #@56e
    .line 1165
    .end local v3    # "choice":Ljava/lang/Integer;
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "key$iterator":Ljava/util/Iterator;
    :cond_30
    const-string/jumbo v15, "triggeredLow: "

    #@571
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@574
    move-result-object v15

    #@575
    move-object/from16 v0, p0

    #@577
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@579
    move/from16 v16, v0

    #@57b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@57e
    .line 1166
    const-string/jumbo v15, " triggeredBad: "

    #@581
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@584
    move-result-object v15

    #@585
    move-object/from16 v0, p0

    #@587
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@589
    move/from16 v16, v0

    #@58b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58e
    .line 1167
    const-string/jumbo v15, " triggeredNotHigh: "

    #@591
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@594
    move-result-object v15

    #@595
    move-object/from16 v0, p0

    #@597
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@599
    move/from16 v16, v0

    #@59b
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@59e
    .line 1168
    const/16 v15, 0xa

    #@5a0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5a3
    .line 1169
    const-string/jumbo v15, "ticksLow: "

    #@5a6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a9
    move-result-object v15

    #@5aa
    move-object/from16 v0, p0

    #@5ac
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@5ae
    move/from16 v16, v0

    #@5b0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5b3
    .line 1170
    const-string/jumbo v15, " ticksBad: "

    #@5b6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b9
    move-result-object v15

    #@5ba
    move-object/from16 v0, p0

    #@5bc
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@5be
    move/from16 v16, v0

    #@5c0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5c3
    .line 1171
    const-string/jumbo v15, " ticksNotHigh: "

    #@5c6
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c9
    move-result-object v15

    #@5ca
    move-object/from16 v0, p0

    #@5cc
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@5ce
    move/from16 v16, v0

    #@5d0
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5d3
    .line 1172
    const/16 v15, 0xa

    #@5d5
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5d8
    .line 1173
    const-string/jumbo v15, "triggeredJoin: "

    #@5db
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5de
    move-result-object v15

    #@5df
    move-object/from16 v0, p0

    #@5e1
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@5e3
    move/from16 v16, v0

    #@5e5
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5e8
    .line 1174
    const/16 v15, 0xa

    #@5ea
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@5ed
    .line 1175
    const-string/jumbo v15, "autoJoinBailedDueToLowRssi: "

    #@5f0
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f3
    move-result-object v15

    #@5f4
    move-object/from16 v0, p0

    #@5f6
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@5f8
    move/from16 v16, v0

    #@5fa
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@5fd
    .line 1176
    const/16 v15, 0xa

    #@5ff
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@602
    .line 1177
    const-string/jumbo v15, "autoJoinUseAggressiveJoinAttemptThreshold: "

    #@605
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@608
    .line 1178
    move-object/from16 v0, p0

    #@60a
    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@60c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60f
    .line 1179
    const/16 v15, 0xa

    #@611
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@614
    .line 1181
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@617
    move-result-object v15

    #@618
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
    .line 1536
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #@4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@7
    .line 1537
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    #@9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c
    .line 1538
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    #@e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11
    .line 1539
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    #@13
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@16
    .line 1540
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    #@18
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1b
    .line 1541
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    #@1d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@20
    .line 1542
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    #@22
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@25
    .line 1543
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    #@27
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2a
    .line 1544
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    #@2c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2f
    .line 1545
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    #@31
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@34
    .line 1546
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@36
    array-length v3, v3

    #@37
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@3a
    .line 1547
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    #@3c
    array-length v7, v6

    #@3d
    move v3, v5

    #@3e
    :goto_0
    if-ge v3, v7, :cond_0

    #@40
    aget-wide v0, v6, v3

    #@42
    .line 1548
    .local v0, "roamingConsortiumId":J
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    #@45
    .line 1547
    add-int/lit8 v3, v3, 0x1

    #@47
    goto :goto_0

    #@48
    .line 1550
    .end local v0    # "roamingConsortiumId":J
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    #@4a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@4d
    .line 1551
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    #@4f
    array-length v7, v6

    #@50
    move v3, v5

    #@51
    :goto_1
    if-ge v3, v7, :cond_1

    #@53
    aget-object v2, v6, v3

    #@55
    .line 1552
    .local v2, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@58
    .line 1551
    add-int/lit8 v3, v3, 0x1

    #@5a
    goto :goto_1

    #@5b
    .line 1554
    .end local v2    # "wepKey":Ljava/lang/String;
    :cond_1
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    #@5d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@60
    .line 1555
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@62
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@65
    .line 1556
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    #@67
    if-eqz v3, :cond_2

    #@69
    move v3, v4

    #@6a
    :goto_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@6d
    .line 1557
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    #@6f
    if-eqz v3, :cond_3

    #@71
    move v3, v4

    #@72
    :goto_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@75
    .line 1558
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    #@77
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@7a
    .line 1560
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    #@7c
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@7f
    .line 1561
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    #@81
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@84
    .line 1562
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    #@86
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@89
    .line 1563
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    #@8b
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@8e
    .line 1564
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    #@90
    invoke-static {p1, v3}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    #@93
    .line 1566
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    #@95
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@98
    .line 1568
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    #@9a
    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@9d
    .line 1569
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    #@9f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a2
    .line 1570
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    #@a4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a7
    .line 1571
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    #@a9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@ac
    .line 1572
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    #@ae
    if-eqz v3, :cond_4

    #@b0
    move v3, v4

    #@b1
    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@b4
    .line 1573
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    #@b6
    if-eqz v3, :cond_5

    #@b8
    move v3, v4

    #@b9
    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@bc
    .line 1574
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    #@be
    if-eqz v3, :cond_6

    #@c0
    move v3, v4

    #@c1
    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@c4
    .line 1575
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    #@c6
    if-eqz v3, :cond_7

    #@c8
    move v3, v4

    #@c9
    :goto_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@cc
    .line 1576
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    #@ce
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d1
    .line 1577
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    #@d3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@d6
    .line 1578
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    #@d8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@db
    .line 1579
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    #@dd
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e0
    .line 1580
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    #@e2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@e5
    .line 1581
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    #@e7
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@ea
    .line 1582
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    #@ec
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@ef
    .line 1583
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    #@f1
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@f4
    .line 1584
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    #@f6
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@f9
    .line 1585
    iget-wide v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    #@fb
    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    #@fe
    .line 1586
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    #@100
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@103
    .line 1587
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    #@105
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@108
    .line 1588
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    #@10a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@10d
    .line 1589
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    #@10f
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@112
    .line 1590
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    #@114
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@117
    .line 1591
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    #@119
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@11c
    .line 1592
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    #@11e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@121
    .line 1593
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    #@123
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@126
    .line 1594
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    #@128
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@12b
    .line 1595
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    #@12d
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@130
    .line 1596
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    #@132
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@135
    .line 1597
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    #@137
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13a
    .line 1598
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    #@13c
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@13f
    .line 1599
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    #@141
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@144
    .line 1600
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    #@146
    if-eqz v3, :cond_8

    #@148
    move v3, v4

    #@149
    :goto_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@14c
    .line 1601
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    #@14e
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@151
    .line 1602
    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    #@153
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@156
    .line 1603
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    #@158
    if-eqz v3, :cond_9

    #@15a
    :goto_9
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    #@15d
    .line 1535
    return-void

    #@15e
    :cond_2
    move v3, v5

    #@15f
    .line 1556
    goto/16 :goto_2

    #@161
    :cond_3
    move v3, v5

    #@162
    .line 1557
    goto/16 :goto_3

    #@164
    :cond_4
    move v3, v5

    #@165
    .line 1572
    goto/16 :goto_4

    #@167
    :cond_5
    move v3, v5

    #@168
    .line 1573
    goto/16 :goto_5

    #@16a
    :cond_6
    move v3, v5

    #@16b
    .line 1574
    goto/16 :goto_6

    #@16d
    :cond_7
    move v3, v5

    #@16e
    .line 1575
    goto/16 :goto_7

    #@170
    :cond_8
    move v3, v5

    #@171
    .line 1600
    goto :goto_8

    #@172
    :cond_9
    move v4, v5

    #@173
    .line 1603
    goto :goto_9
.end method
