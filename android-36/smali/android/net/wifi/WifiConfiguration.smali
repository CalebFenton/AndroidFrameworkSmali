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
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$SuiteBCipher;,
        Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;,
        Landroid/net/wifi/WifiConfiguration$RecentFailure;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;,
        Landroid/net/wifi/WifiConfiguration$RecentFailureReason;,
        Landroid/net/wifi/WifiConfiguration$MacRandomizationSetting;,
        Landroid/net/wifi/WifiConfiguration$MeteredOverride;,
        Landroid/net/wifi/WifiConfiguration$ApBand;,
        Landroid/net/wifi/WifiConfiguration$SecurityType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final greylist-max-o AP_BAND_2GHZ:I = 0x0

.field public static final greylist-max-o AP_BAND_5GHZ:I = 0x1

.field public static final blacklist AP_BAND_60GHZ:I = 0x2

.field public static final greylist-max-o AP_BAND_ANY:I = -0x1

.field private static final greylist-max-o BACKUP_VERSION:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o HOME_NETWORK_RSSI_BOOST:I = 0x5

.field public static final whitelist INVALID_NETWORK_ID:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static greylist-max-p INVALID_RSSI:I = 0x0

.field public static final greylist-max-o LOCAL_ONLY_NETWORK_ID:I = -0x2

.field private static final greylist-max-o MAXIMUM_RANDOM_MAC_GENERATION_RETRY:I = 0x3

.field public static final whitelist METERED_OVERRIDE_METERED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METERED_OVERRIDE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist METERED_OVERRIDE_NOT_METERED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RANDOMIZATION_AUTO:I = 0x3

.field public static final whitelist RANDOMIZATION_NONE:I = 0x0

.field public static final whitelist RANDOMIZATION_NON_PERSISTENT:I = 0x2

.field public static final whitelist RANDOMIZATION_PERSISTENT:I = 0x1

.field public static final whitelist RECENT_FAILURE_AP_UNABLE_TO_HANDLE_NEW_STA:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_DISCONNECTION_AP_BUSY:I = 0x3ec
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_MBO_ASSOC_DISALLOWED_AIR_INTERFACE_OVERLOADED:I = 0x3ef
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_MBO_ASSOC_DISALLOWED_AUTH_SERVER_OVERLOADED:I = 0x3f0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_MBO_ASSOC_DISALLOWED_INSUFFICIENT_RSSI:I = 0x3f1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_MBO_ASSOC_DISALLOWED_MAX_NUM_STA_ASSOCIATED:I = 0x3ee
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_MBO_ASSOC_DISALLOWED_UNSPECIFIED:I = 0x3ed
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_NETWORK_NOT_FOUND:I = 0x3f3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_OCE_RSSI_BASED_ASSOCIATION_REJECTION:I = 0x3f2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_POOR_CHANNEL_CONDITIONS:I = 0x3eb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RECENT_FAILURE_REFUSED_TEMPORARILY:I = 0x3ea
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist SECURITY_TYPE_DPP:I = 0xd

.field public static final whitelist SECURITY_TYPE_EAP:I = 0x3

.field public static final whitelist SECURITY_TYPE_EAP_SUITE_B:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SECURITY_TYPE_EAP_WPA3_ENTERPRISE:I = 0x9

.field public static final whitelist SECURITY_TYPE_EAP_WPA3_ENTERPRISE_192_BIT:I = 0x5

.field private static final blacklist SECURITY_TYPE_NAMES:[Ljava/lang/String;

.field public static final blacklist SECURITY_TYPE_NUM:I = 0xd

.field public static final whitelist SECURITY_TYPE_OPEN:I = 0x0

.field public static final blacklist SECURITY_TYPE_OSEN:I = 0xa

.field public static final whitelist SECURITY_TYPE_OWE:I = 0x6

.field public static final blacklist SECURITY_TYPE_PASSPOINT_R1_R2:I = 0xb

.field public static final blacklist SECURITY_TYPE_PASSPOINT_R3:I = 0xc

.field public static final whitelist SECURITY_TYPE_PSK:I = 0x2

.field public static final whitelist SECURITY_TYPE_SAE:I = 0x4

.field public static final whitelist SECURITY_TYPE_WAPI_CERT:I = 0x8

.field public static final whitelist SECURITY_TYPE_WAPI_PSK:I = 0x7

.field public static final whitelist SECURITY_TYPE_WEP:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static final greylist-max-o UNKNOWN_UID:I = -0x1

.field public static final greylist-max-o bssidVarName:Ljava/lang/String; = "bssid"

.field public static final greylist-max-o hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final greylist-max-o pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final greylist-max-o priorityVarName:Ljava/lang/String; = "priority"

.field public static final greylist-max-o pskVarName:Ljava/lang/String; = "psk"

.field public static final greylist-max-o ssidVarName:Ljava/lang/String; = "ssid"

.field public static final greylist-max-o updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final greylist wepKeyVarNames:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public whitelist BSSID:Ljava/lang/String;

.field public whitelist FQDN:Ljava/lang/String;

.field public whitelist SSID:Ljava/lang/String;

.field public whitelist allowAutojoin:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist allowedAuthAlgorithms:Ljava/util/BitSet;

.field public whitelist allowedGroupCiphers:Ljava/util/BitSet;

.field public whitelist allowedGroupManagementCiphers:Ljava/util/BitSet;

.field public whitelist allowedKeyManagement:Ljava/util/BitSet;

.field public whitelist allowedPairwiseCiphers:Ljava/util/BitSet;

.field public whitelist allowedProtocols:Ljava/util/BitSet;

.field public whitelist allowedSuiteBCiphers:Ljava/util/BitSet;

.field public greylist apBand:I

.field public greylist apChannel:I

.field public whitelist carrierId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist carrierMerged:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist creatorName:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist creatorUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public greylist defaultGwMacAddress:Ljava/lang/String;

.field public greylist-max-o dhcpServer:Ljava/lang/String;

.field public greylist-max-o dtimInterval:I

.field public whitelist enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public greylist-max-o ephemeral:Z

.field public whitelist fromWifiNetworkSpecifier:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist fromWifiNetworkSuggestion:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist hiddenSSID:Z

.field public blacklist isCurrentlyConnected:Z

.field public whitelist isHomeProviderNetwork:Z

.field public greylist-max-o isLegacyPasspointConfig:Z

.field public blacklist isMostRecentlyConnected:Z

.field public whitelist lastConnectUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist lastConnected:J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public greylist-max-o lastDisconnected:J

.field public whitelist lastUpdateName:Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist lastUpdateUid:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public blacklist lastUpdated:J

.field public greylist-max-o linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBssidAllowlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mDeletionPriority:I

.field private blacklist mDppCSignKey:[B

.field private blacklist mDppConnector:[B

.field private blacklist mDppNetAccessKey:[B

.field private blacklist mDppPrivateEcKey:[B

.field private blacklist mEncryptedPreSharedKey:[B

.field private blacklist mEncryptedPreSharedKeyIv:[B

.field private blacklist mHasPreSharedKeyChanged:Z

.field private greylist mIpConfiguration:Landroid/net/IpConfiguration;

.field private blacklist mIpProvisioningTimedOut:Z

.field private blacklist mIsDppConfigurator:Z

.field private blacklist mIsRepeaterEnabled:Z

.field private blacklist mIsSendDhcpHostnameEnabled:Z

.field private blacklist mIsUserSelected:Z

.field private greylist-max-o mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

.field private greylist-max-o mPasspointManagementObjectTree:Ljava/lang/String;

.field private blacklist mPasspointUniqueId:Ljava/lang/String;

.field private greylist-max-o mRandomizedMacAddress:Landroid/net/MacAddress;

.field private blacklist mSecurityParamsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSubscriptionGroup:Landroid/os/ParcelUuid;

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mWifi7Enabled:Z

.field public whitelist macRandomizationSetting:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist meteredHint:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist meteredOverride:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist networkId:I

.field public greylist-max-r noInternetAccessExpected:Z

.field public whitelist numAssociation:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public greylist-max-r numNoInternetAccessReports:I

.field public whitelist numRebootsSinceLastUse:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist numScorerOverride:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist numScorerOverrideAndSwitchedNetwork:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public blacklist oemPaid:Z

.field public blacklist oemPrivate:Z

.field public blacklist osu:Z

.field public greylist-max-o peerWifiConfiguration:Ljava/lang/String;

.field public whitelist preSharedKey:Ljava/lang/String;

.field public whitelist priority:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist providerFriendlyName:Ljava/lang/String;

.field public blacklist randomizedMacExpirationTimeMs:J

.field public blacklist randomizedMacLastModifiedTimeMs:J

.field public final greylist-max-o recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

.field public whitelist requirePmf:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public blacklist restricted:Z

.field public whitelist roamingConsortiumIds:[J

.field public greylist-max-r selfAdded:Z

.field public whitelist shared:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist status:I

.field public whitelist subscriptionId:I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public blacklist trusted:Z

.field public greylist-max-o updateIdentifier:Ljava/lang/String;

.field public whitelist useExternalScores:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public greylist validatedInternetAccess:Z

.field public whitelist wepKeys:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public whitelist wepTxKeyIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$9WRNVOaU9e0O3Uauu67Z8gUIFQs(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/SecurityParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfiguration;->lambda$new$3(Landroid/net/wifi/SecurityParams;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pXpFJR-ThE-Dmv_cguYAf8FEYdU(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/SecurityParams;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiConfiguration;->lambda$setSecurityParams$0(Landroid/net/wifi/SecurityParams;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDppCSignKey(Landroid/net/wifi/WifiConfiguration;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDppConnector(Landroid/net/wifi/WifiConfiguration;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDppNetAccessKey(Landroid/net/wifi/WifiConfiguration;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDppPrivateEcKey(Landroid/net/wifi/WifiConfiguration;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncryptedPreSharedKey(Landroid/net/wifi/WifiConfiguration;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEncryptedPreSharedKeyIv(Landroid/net/wifi/WifiConfiguration;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecurityParamsList(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBssidAllowlist(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDeletionPriority(Landroid/net/wifi/WifiConfiguration;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDppCSignKey(Landroid/net/wifi/WifiConfiguration;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDppConnector(Landroid/net/wifi/WifiConfiguration;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDppNetAccessKey(Landroid/net/wifi/WifiConfiguration;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDppPrivateEcKey(Landroid/net/wifi/WifiConfiguration;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEncryptedPreSharedKey(Landroid/net/wifi/WifiConfiguration;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEncryptedPreSharedKeyIv(Landroid/net/wifi/WifiConfiguration;[B)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasPreSharedKeyChanged(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIpProvisioningTimedOut(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsDppConfigurator(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsRepeaterEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsSendDhcpHostnameEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUserSelected(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPasspointManagementObjectTree(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPasspointUniqueId(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRandomizedMacAddress(Landroid/net/wifi/WifiConfiguration;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubscriptionGroup(Landroid/net/wifi/WifiConfiguration;Landroid/os/ParcelUuid;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVendorData(Landroid/net/wifi/WifiConfiguration;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifi7Enabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smreadBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 15

    .line 96
    const-string v0, "wep_key2"

    const-string v1, "wep_key3"

    const-string v2, "wep_key0"

    const-string v3, "wep_key1"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 561
    const-string v13, "passpoint r3"

    const-string v14, "dpp"

    const-string v1, "open"

    const-string v2, "wep"

    const-string v3, "wpa2-psk"

    const-string v4, "wpa2-enterprise"

    const-string v5, "wpa3-sae"

    const-string v6, "wpa3 enterprise 192-bit"

    const-string v7, "owe"

    const-string v8, "wapi-psk"

    const-string v9, "wapi-cert"

    const-string v10, "wpa3 enterprise"

    const-string v11, "wpa3 enterprise 192-bit"

    const-string v12, "passpoint r1/r2"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->SECURITY_TYPE_NAMES:[Ljava/lang/String;

    .line 1506
    const/16 v0, -0x7f

    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 4284
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 7

    .line 3339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1188
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1411
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 1419
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 1462
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 1470
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 1473
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 1481
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 1488
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    .line 1775
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1904
    const/4 v4, 0x3

    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 1944
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    .line 1950
    iput-wide v4, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    .line 1989
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    .line 3101
    new-instance v4, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3161
    new-instance v4, Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-direct {v4, v2}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>(Landroid/net/wifi/WifiConfiguration-IA;)V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 4418
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 4442
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isMostRecentlyConnected:Z

    .line 4453
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    .line 4455
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    .line 3340
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3341
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3342
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 3343
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 3344
    new-array v4, v0, [J

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 3345
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 3346
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    .line 3347
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 3348
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3349
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 3350
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 3351
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 3352
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 3353
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 3354
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 3355
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 3356
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8c
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_98

    .line 3357
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v5, v4

    .line 3356
    add-int/lit8 v4, v4, 0x1

    goto :goto_8c

    .line 3359
    .end local v4    # "i":I
    :cond_98
    new-instance v4, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v4}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3360
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 3361
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    .line 3362
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 3363
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 3364
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 3365
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 3366
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 3367
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 3368
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 3369
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    .line 3370
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 3371
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 3372
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 3373
    new-instance v4, Landroid/net/IpConfiguration;

    invoke-direct {v4}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 3374
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 3375
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 3376
    iput-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 3377
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 3378
    const-string v1, "02:00:00:00:00:00"

    invoke-static {v1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    .line 3379
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    .line 3380
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    .line 3381
    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    .line 3382
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    .line 3383
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    .line 3384
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    .line 3385
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    .line 3386
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    .line 3387
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    .line 3388
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    .line 3389
    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    .line 3390
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    .line 3391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    .line 3392
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/WifiConfiguration;)V
    .registers 8
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .line 4068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    .line 1177
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1188
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1411
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->dtimInterval:I

    .line 1419
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 1462
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 1470
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 1473
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 1481
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 1488
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    .line 1775
    iput v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1904
    const/4 v3, 0x3

    iput v3, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 1944
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    .line 1950
    iput-wide v3, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    .line 1989
    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    .line 3101
    new-instance v2, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3161
    new-instance v2, Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiConfiguration$RecentFailure;-><init>(Landroid/net/wifi/WifiConfiguration-IA;)V

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 4418
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 4442
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isMostRecentlyConnected:Z

    .line 4453
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    .line 4455
    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    .line 4069
    if-eqz p1, :cond_26d

    .line 4070
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 4071
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 4072
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 4073
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 4074
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 4075
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v2}, [J->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 4076
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 4077
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    .line 4078
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 4080
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->copy(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V

    .line 4081
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 4082
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 4084
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 4085
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_86
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_96

    .line 4086
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    .line 4085
    add-int/lit8 v2, v2, 0x1

    goto :goto_86

    .line 4089
    .end local v2    # "i":I
    :cond_96
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 4090
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 4091
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    .line 4092
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 4093
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 4094
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 4095
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 4096
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 4097
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 4098
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    .line 4099
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    .line 4100
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    .line 4101
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v3, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4102
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 4104
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 4106
    new-instance v2, Landroid/net/IpConfiguration;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v2, v3}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 4108
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v2, :cond_133

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 4109
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_133

    .line 4110
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 4111
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 4113
    :cond_133
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 4114
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    .line 4115
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 4116
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->osu:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    .line 4117
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    .line 4118
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    .line 4119
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    .line 4120
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    .line 4121
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    .line 4122
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    .line 4123
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    .line 4124
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    .line 4125
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    .line 4126
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 4127
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    .line 4129
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 4130
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 4131
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 4132
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 4133
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 4134
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 4136
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 4137
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 4138
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdated:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdated:J

    .line 4139
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    .line 4140
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 4141
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 4142
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 4143
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 4144
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 4145
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 4146
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->shared:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 4147
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v3

    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 4148
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getLastUpdateTimeSinceBootMillis()J

    move-result-wide v4

    .line 4147
    invoke-virtual {v2, v3, v4, v5}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->setAssociationStatus(IJ)V

    .line 4149
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    .line 4150
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 4151
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    .line 4152
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    .line 4153
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    .line 4154
    iget-boolean v2, p1, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    iput-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 4155
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    .line 4156
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    .line 4157
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    iput v2, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    .line 4158
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 4159
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 4160
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    if-eqz v2, :cond_1fe

    .line 4161
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    goto :goto_200

    .line 4163
    :cond_1fe
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    .line 4165
    :goto_200
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    .line 4166
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    .line 4167
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    .line 4168
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    .line 4169
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    .line 4170
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    .line 4171
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    .line 4172
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->hasPreSharedKeyChanged()Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    .line 4173
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    if-eqz v1, :cond_247

    .line 4174
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_249

    :cond_247
    new-array v1, v0, [B

    :goto_249
    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    .line 4175
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    if-eqz v1, :cond_258

    .line 4176
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_25a

    :cond_258
    new-array v0, v0, [B

    :goto_25a
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    .line 4177
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    .line 4178
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    .line 4179
    iget-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    .line 4181
    :cond_26d
    return-void
.end method

.method public static blacklist getSecurityTypeName(I)Ljava/lang/String;
    .registers 2
    .param p0, "securityType"    # I

    .line 4644
    if-ltz p0, :cond_c

    const/16 v0, 0xd

    if-ge v0, p0, :cond_7

    goto :goto_c

    .line 4647
    :cond_7
    sget-object v0, Landroid/net/wifi/WifiConfiguration;->SECURITY_TYPE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0

    .line 4645
    :cond_c
    :goto_c
    const-string v0, "unknown"

    return-object v0
.end method

.method private blacklist hasWepKeys()Z
    .registers 4

    .line 1807
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1808
    :cond_6
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 1809
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_14

    .line 1810
    const/4 v1, 0x1

    return v1

    .line 1808
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1813
    .end local v0    # "i":I
    :cond_17
    return v1
.end method

.method public static whitelist isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z
    .registers 5
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1787
    const/4 v0, 0x0

    .line 1788
    .local v0, "metered":Z
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getMeteredHint()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1789
    const/4 v0, 0x1

    .line 1791
    :cond_a
    if-eqz p0, :cond_11

    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v1, :cond_11

    .line 1792
    const/4 v0, 0x1

    .line 1794
    :cond_11
    if-eqz p0, :cond_19

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 1796
    const/4 v0, 0x1

    .line 1798
    :cond_19
    if-eqz p0, :cond_21

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_21

    .line 1800
    const/4 v0, 0x0

    .line 1802
    :cond_21
    return v0
.end method

.method public static greylist-max-o isValidMacAddressForRandomization(Landroid/net/MacAddress;)Z
    .registers 2
    .param p0, "mac"    # Landroid/net/MacAddress;

    .line 1960
    if-eqz p0, :cond_1c

    invoke-static {p0}, Lcom/android/wifi/x/com/android/net/module/util/MacAddressUtils;->isMulticastAddress(Landroid/net/MacAddress;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {p0}, Landroid/net/MacAddress;->isLocallyAssigned()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1961
    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 1960
    :goto_1d
    return v0
.end method

.method private blacklist isWpa3EnterpriseConfiguration()Z
    .registers 5

    .line 714
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 715
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 716
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 717
    return v2

    .line 719
    :cond_1e
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    if-nez v0, :cond_23

    return v2

    .line 721
    :cond_23
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2d

    return v2

    .line 722
    :cond_2d
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_36

    return v2

    .line 724
    :cond_36
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    return v2

    .line 725
    :cond_3f
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_48

    return v2

    .line 726
    :cond_48
    return v3
.end method

.method static synthetic blacklist lambda$enableFils$1(ZZLandroid/net/wifi/SecurityParams;)V
    .registers 3
    .param p0, "enableFilsSha256"    # Z
    .param p1, "enableFilsSha384"    # Z
    .param p2, "params"    # Landroid/net/wifi/SecurityParams;

    .line 935
    invoke-virtual {p2, p0, p1}, Landroid/net/wifi/SecurityParams;->enableFils(ZZ)V

    return-void
.end method

.method private synthetic blacklist lambda$new$3(Landroid/net/wifi/SecurityParams;)V
    .registers 4
    .param p1, "p"    # Landroid/net/wifi/SecurityParams;

    .line 4101
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/SecurityParams;

    invoke-direct {v1, p1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic blacklist lambda$setSecurityParams$0(Landroid/net/wifi/SecurityParams;)V
    .registers 4
    .param p1, "p"    # Landroid/net/wifi/SecurityParams;

    .line 645
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/SecurityParams;

    invoke-direct {v1, p1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic blacklist lambda$toString$2(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V
    .registers 3
    .param p0, "sbuf"    # Ljava/lang/StringBuilder;
    .param p1, "params"    # Landroid/net/wifi/SecurityParams;

    .line 3641
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method static synthetic blacklist lambda$writeToParcel$4(Landroid/os/Parcel;ILandroid/net/wifi/SecurityParams;)V
    .registers 3
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "flags"    # I
    .param p2, "params"    # Landroid/net/wifi/SecurityParams;

    .line 4220
    invoke-virtual {p0, p2, p1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method

.method private static blacklist logTimeOfDay(J)Ljava/lang/String;
    .registers 5
    .param p0, "millis"    # J

    .line 3440
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 3441
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_1b

    .line 3442
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 3443
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    .line 3442
    invoke-static {v1, v2}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v1

    .line 3444
    .local v1, "localDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3446
    .end local v1    # "localDateTime":Ljava/time/LocalDateTime;
    :cond_1b
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .registers 5
    .param p0, "src"    # Landroid/os/Parcel;

    .line 3802
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 3804
    .local v0, "cardinality":I
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    .line 3805
    .local v1, "set":Ljava/util/BitSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v0, :cond_16

    .line 3806
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 3805
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3809
    .end local v2    # "i":I
    :cond_16
    return-object v1
.end method

.method private greylist-max-o trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "string"    # Ljava/lang/String;

    .line 3794
    const-string v0, ""

    if-nez p1, :cond_5

    .line 3795
    return-object v0

    .line 3798
    :cond_5
    const-string v1, "\""

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist updateLegacySecurityParams()V
    .registers 3

    .line 571
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 572
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SecurityParams;

    invoke-virtual {v0, p0}, Landroid/net/wifi/SecurityParams;->updateLegacyWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 573
    return-void
.end method

.method private static greylist-max-o writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .line 3813
    const/4 v0, -0x1

    .line 3815
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3817
    :goto_8
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_16

    .line 3818
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 3820
    :cond_16
    return-void
.end method


# virtual methods
.method public blacklist addSecurityParams(I)V
    .registers 6
    .param p1, "securityType"    # I

    .line 671
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 672
    .local v1, "params":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-nez v2, :cond_19

    .line 675
    .end local v1    # "params":Landroid/net/wifi/SecurityParams;
    goto :goto_6

    .line 673
    .restart local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate security type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    .end local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_32
    invoke-static {p1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->addSecurityParams(Landroid/net/wifi/SecurityParams;)V

    .line 677
    return-void
.end method

.method public blacklist addSecurityParams(Landroid/net/wifi/SecurityParams;)V
    .registers 6
    .param p1, "newParams"    # Landroid/net/wifi/SecurityParams;

    .line 682
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 683
    .local v1, "params":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->isSameSecurityType(Landroid/net/wifi/SecurityParams;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 686
    .end local v1    # "params":Landroid/net/wifi/SecurityParams;
    goto :goto_6

    .line 684
    .restart local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duplicate security params "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    .end local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_32
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9f

    .line 688
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isEnterpriseSecurityType()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_4f

    .line 689
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An enterprise security type cannot be added to a personal configuation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_4f
    :goto_4f
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isEnterpriseSecurityType()Z

    move-result v0

    if-nez v0, :cond_64

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-nez v0, :cond_5c

    goto :goto_64

    .line 693
    :cond_5c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A personal security type cannot be added to an enterprise configuation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_64
    :goto_64
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isOpenSecurityType()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    move-result v0

    if-eqz v0, :cond_71

    goto :goto_79

    .line 697
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An open security type cannot be added to a non-open configuation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 700
    :cond_79
    :goto_79
    invoke-virtual {p1}, Landroid/net/wifi/SecurityParams;->isOpenSecurityType()Z

    move-result v0

    if-nez v0, :cond_8e

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->isOpenNetwork()Z

    move-result v0

    if-nez v0, :cond_86

    goto :goto_8e

    .line 701
    :cond_86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A non-open security type cannot be added to an open configuation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :cond_8e
    :goto_8e
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v0

    if-nez v0, :cond_97

    goto :goto_9f

    .line 705
    :cond_97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An OSEN security type must be the only one type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_9f
    :goto_9f
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/SecurityParams;

    invoke-direct {v1, p1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->updateLegacySecurityParams()V

    .line 711
    return-void
.end method

.method public blacklist convertLegacyFieldsToSecurityParamsIfNeeded()V
    .registers 10

    .line 745
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 746
    :cond_9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1a

    .line 747
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 748
    :cond_1a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v3, 0x7

    if-eqz v0, :cond_2a

    .line 749
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 750
    :cond_2a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v5, 0x5

    if-eqz v0, :cond_3a

    .line 751
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 752
    :cond_3a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v6, 0x11

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 753
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 754
    :cond_49
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v7, 0x9

    invoke-virtual {v0, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v8, 0x6

    if-eqz v0, :cond_59

    .line 755
    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 756
    :cond_59
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_67

    .line 757
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 758
    :cond_67
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 759
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto/16 :goto_10e

    .line 760
    :cond_74
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_10b

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 761
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_10b

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 762
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_91

    goto/16 :goto_10b

    .line 764
    :cond_91
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v4, 0x3

    if-nez v0, :cond_fd

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 765
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 766
    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 767
    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 768
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_fd

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 769
    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_c9

    goto :goto_fd

    .line 775
    :cond_c9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 776
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 777
    :cond_d6
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 778
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 779
    :cond_e2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 780
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->hasWepKeys()Z

    move-result v0

    if-eqz v0, :cond_f5

    .line 781
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 783
    :cond_f5
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 786
    :cond_f9
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 770
    :cond_fd
    :goto_fd
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->isWpa3EnterpriseConfiguration()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 771
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 773
    :cond_107
    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    goto :goto_10e

    .line 763
    :cond_10b
    :goto_10b
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    .line 788
    :goto_10e
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 4054
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableFils(ZZ)V
    .registers 5
    .param p1, "enableFilsSha256"    # Z
    .param p2, "enableFilsSha384"    # Z

    .line 934
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;-><init>(ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 936
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->updateLegacySecurityParams()V

    .line 937
    return-void
.end method

.method public blacklist enableSaeH2eOnlyMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1025
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 1026
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1027
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->enableSaeH2eOnlyMode(Z)V

    .line 1028
    return-void

    .line 1030
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1d
    goto :goto_6

    .line 1031
    :cond_1e
    return-void
.end method

.method public blacklist enableSaePkOnlyMode(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1042
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 1043
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1044
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->enableSaePkOnlyMode(Z)V

    .line 1045
    return-void

    .line 1047
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1d
    goto :goto_6

    .line 1048
    :cond_1e
    return-void
.end method

.method public blacklist enableSuiteBCiphers(ZZ)V
    .registers 6
    .param p1, "enableEcdheEcdsa"    # Z
    .param p2, "enableEcdheRsa"    # Z

    .line 977
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 978
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 979
    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/SecurityParams;->enableSuiteBCiphers(ZZ)V

    .line 980
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->updateLegacySecurityParams()V

    .line 981
    return-void

    .line 983
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_20
    goto :goto_6

    .line 984
    :cond_21
    return-void
.end method

.method public whitelist getAllNetworkKeys()Ljava/util/Set;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4696
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4697
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SecurityParams;

    .line 4698
    .local v2, "securityParam":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v2}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration;->getNetworkKeyFromSecurityType(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4699
    .end local v2    # "securityParam":Landroid/net/wifi/SecurityParams;
    goto :goto_b

    .line 4700
    :cond_23
    return-object v0
.end method

.method public whitelist getAuthType()I
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3831
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v0, v4, :cond_5a

    .line 3832
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3833
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v3, :cond_26

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3834
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 3835
    return v3

    .line 3837
    :cond_26
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    if-ne v0, v2, :cond_3f

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3838
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3839
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 3840
    return v1

    .line 3843
    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid auth type set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3845
    :cond_5a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 3846
    return v4

    .line 3847
    :cond_63
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3848
    return v4

    .line 3849
    :cond_6d
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 3850
    return v3

    .line 3851
    :cond_76
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 3852
    return v2

    .line 3853
    :cond_7f
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 3854
    return v2

    .line 3855
    :cond_8a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 3856
    return v2

    .line 3857
    :cond_95
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 3858
    return v1

    .line 3859
    :cond_9e
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 3860
    return v1

    .line 3861
    :cond_a9
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 3862
    return v1

    .line 3863
    :cond_b4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 3864
    return v1

    .line 3866
    :cond_bf
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBssidAllowlist()Ljava/util/List;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    if-nez v0, :cond_6

    .line 1125
    const/4 v0, 0x0

    return-object v0

    .line 1127
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getBssidAllowlistInternal()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation

    .line 1134
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDefaultSecurityParams()Landroid/net/wifi/SecurityParams;
    .registers 4

    .line 922
    new-instance v0, Landroid/net/wifi/SecurityParams;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0, v1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams;)V

    return-object v0
.end method

.method public blacklist getDefaultSecurityType()Ljava/lang/String;
    .registers 4

    .line 4591
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4592
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .local v0, "key":Ljava/lang/String;
    goto/16 :goto_b6

    .line 4593
    .end local v0    # "key":Ljava/lang/String;
    :cond_f
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_a9

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 4594
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_23

    goto/16 :goto_a9

    .line 4600
    :cond_23
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    if-ltz v0, :cond_3a

    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_3a

    .line 4602
    const-string v0, "WEP"

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_b6

    .line 4603
    .end local v0    # "key":Ljava/lang/String;
    :cond_3a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 4604
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_b6

    .line 4605
    .end local v0    # "key":Ljava/lang/String;
    :cond_4a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 4606
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4607
    .end local v0    # "key":Ljava/lang/String;
    :cond_59
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 4608
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4609
    .end local v0    # "key":Ljava/lang/String;
    :cond_68
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 4610
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4611
    .end local v0    # "key":Ljava/lang/String;
    :cond_77
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 4612
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4613
    .end local v0    # "key":Ljava/lang/String;
    :cond_86
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 4614
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4615
    .end local v0    # "key":Ljava/lang/String;
    :cond_94
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 4616
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4618
    .end local v0    # "key":Ljava/lang/String;
    :cond_a3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4595
    .end local v0    # "key":Ljava/lang/String;
    :cond_a9
    :goto_a9
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->isWpa3EnterpriseConfiguration()Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 4596
    const-string v0, "WPA3_EAP"

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_b6

    .line 4598
    .end local v0    # "key":Ljava/lang/String;
    :cond_b2
    sget-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v0, v0, v1

    .line 4620
    .restart local v0    # "key":Ljava/lang/String;
    :goto_b6
    return-object v0
.end method

.method public whitelist getDeletionPriority()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1268
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    return v0
.end method

.method public whitelist getDppCSignKey()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2115
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getDppConnector()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2103
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getDppNetAccessKey()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2124
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public whitelist getDppPrivateEcKey()[B
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2093
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public blacklist getEncryptedPreSharedKey()[B
    .registers 2

    .line 4519
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    return-object v0
.end method

.method public blacklist getEncryptedPreSharedKeyIv()[B
    .registers 2

    .line 4529
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    return-object v0
.end method

.method public whitelist getHttpProxy()Landroid/net/ProxyInfo;
    .registers 3

    .line 3997
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v0, v1, :cond_c

    .line 3998
    const/4 v0, 0x0

    return-object v0

    .line 4000
    :cond_c
    new-instance v0, Landroid/net/ProxyInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v1}, Landroid/net/IpConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    return-object v0
.end method

.method public greylist getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .registers 2

    .line 3965
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getIpConfiguration()Landroid/net/IpConfiguration;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3925
    new-instance v0, Landroid/net/IpConfiguration;

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v0, v1}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    return-object v0
.end method

.method public whitelist getKey()Ljava/lang/String;
    .registers 4

    .line 3878
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3879
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-object v0

    .line 3882
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getSsidAndSecurityTypeString()Ljava/lang/String;

    move-result-object v0

    .line 3883
    .local v0, "key":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_30

    .line 3884
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3887
    :cond_30
    return-object v0
.end method

.method public greylist-max-o getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 7
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    .line 3752
    const-string v0, "_"

    const-string v1, ""

    .line 3756
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_4
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3757
    :cond_10
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_1c

    .line 3758
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 3760
    :cond_1c
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3763
    :cond_3b
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 3764
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3766
    :cond_5a
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 3767
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3769
    :cond_79
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 3770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3772
    :cond_99
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_b9

    .line 3773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 3776
    :cond_b9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_137

    .line 3779
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_de

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_de

    .line 3780
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    goto :goto_e0

    :cond_de
    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_e0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3781
    if-eqz p1, :cond_f7

    .line 3782
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    goto :goto_f8

    :cond_f7
    const/4 v4, 0x0

    .line 3781
    :goto_f8
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3784
    .local v2, "keyId":Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v3, :cond_10d

    .line 3785
    return-object v2

    .line 3787
    :cond_10d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3777
    .end local v2    # "keyId":Ljava/lang/String;
    :cond_137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not an EAP network"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "keyMgmt":Ljava/lang/String;
    .end local p0    # "this":Landroid/net/wifi/WifiConfiguration;
    .end local p1    # "current":Landroid/net/wifi/WifiConfiguration;
    throw v0
    :try_end_13f
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_13f} :catch_13f

    .line 3788
    .restart local v1    # "keyMgmt":Ljava/lang/String;
    .restart local p0    # "this":Landroid/net/wifi/WifiConfiguration;
    .restart local p1    # "current":Landroid/net/wifi/WifiConfiguration;
    :catch_13f
    move-exception v0

    .line 3789
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist getMacRandomizationSetting()I
    .registers 2

    .line 1929
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    return v0
.end method

.method public greylist-max-o getMoTree()Ljava/lang/String;
    .registers 2

    .line 4064
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetworkKey()Ljava/lang/String;
    .registers 4

    .line 3898
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 3899
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-object v0

    .line 3902
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getSsidAndSecurityTypeString()Ljava/lang/String;

    move-result-object v0

    .line 3903
    .local v0, "key":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v1, :cond_30

    .line 3904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3907
    :cond_30
    return-object v0
.end method

.method public blacklist getNetworkKeyFromSecurityType(I)Ljava/lang/String;
    .registers 6
    .param p1, "securityType"    # I

    .line 4661
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    const-string v1, "-"

    if-eqz v0, :cond_20

    .line 4669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4671
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3f

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3f

    .line 4672
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    goto :goto_41

    :cond_3f
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->getSecurityTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4673
    .local v0, "key":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v2, :cond_74

    .line 4674
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4676
    :cond_74
    iget-boolean v2, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v2, :cond_a5

    .line 4677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4679
    :cond_a5
    return-object v0
.end method

.method public whitelist getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3314
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    return-object v0
.end method

.method public blacklist getPasspointUniqueId()Ljava/lang/String;
    .registers 2

    .line 4434
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPrintableSsid()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3740
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getProfileKey()Ljava/lang/String;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4567
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_b

    .line 4568
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4570
    :cond_b
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    if-eqz v0, :cond_12

    .line 4571
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    return-object v0

    .line 4574
    :cond_12
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getSsidAndSecurityTypeString()Ljava/lang/String;

    move-result-object v0

    .line 4575
    .local v0, "key":Ljava/lang/String;
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    const-string v2, "-"

    if-nez v1, :cond_3b

    .line 4576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4578
    :cond_3b
    iget-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v1, :cond_6c

    .line 4579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4582
    :cond_6c
    return-object v0
.end method

.method public greylist getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .registers 2

    .line 3982
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getRandomizedMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 1974
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getRecentFailureReason()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3304
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v0

    return v0
.end method

.method public blacklist getSecurityParams(I)Landroid/net/wifi/SecurityParams;
    .registers 5
    .param p1, "securityType"    # I

    .line 865
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 866
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 867
    new-instance v0, Landroid/net/wifi/SecurityParams;

    invoke-direct {v0, v1}, Landroid/net/wifi/SecurityParams;-><init>(Landroid/net/wifi/SecurityParams;)V

    return-object v0

    .line 869
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1e
    goto :goto_6

    .line 870
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getSecurityParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation

    .line 911
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSsidAndSecurityTypeString()Ljava/lang/String;
    .registers 4

    .line 3914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1f

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    goto :goto_21

    :cond_1f
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3915
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getDefaultSecurityType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3914
    return-object v0
.end method

.method public greylist getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .registers 2

    .line 3947
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSubscriptionGroup()Landroid/os/ParcelUuid;
    .registers 2

    .line 4716
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public whitelist getVendorData()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 4731
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4734
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    return-object v0

    .line 4732
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist hasEncryptedPreSharedKey()Z
    .registers 3

    .line 4496
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    if-nez v0, :cond_a

    goto :goto_16

    .line 4497
    :cond_a
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    array-length v0, v0

    if-nez v0, :cond_14

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    array-length v0, v0

    if-eqz v0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1

    .line 4496
    :cond_16
    :goto_16
    return v1
.end method

.method public whitelist hasNoInternetAccess()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1521
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public blacklist hasPreSharedKeyChanged()Z
    .registers 2

    .line 4541
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    return v0
.end method

.method public whitelist isDppConfigurator()Z
    .registers 2

    .line 2083
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    return v0
.end method

.method public greylist isEnterprise()Z
    .registers 5

    .line 3427
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3428
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_f

    goto :goto_2b

    .line 3431
    :cond_f
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SecurityParams;

    .line 3432
    .local v2, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v2}, Landroid/net/wifi/SecurityParams;->isEnterpriseSecurityType()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 3433
    const/4 v0, 0x1

    return v0

    .line 3435
    .end local v2    # "p":Landroid/net/wifi/SecurityParams;
    :cond_29
    goto :goto_15

    .line 3436
    :cond_2a
    return v1

    .line 3429
    :cond_2b
    :goto_2b
    return v1
.end method

.method public whitelist isEphemeral()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1615
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    return v0
.end method

.method public blacklist isFilsSha256Enabled()Z
    .registers 5

    .line 946
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 947
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1}, Landroid/net/wifi/SecurityParams;->getAllowedKeyManagement()Ljava/util/BitSet;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 948
    const/4 v0, 0x1

    return v0

    .line 950
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_20
    goto :goto_6

    .line 951
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFilsSha384Enabled()Z
    .registers 5

    .line 961
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 962
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1}, Landroid/net/wifi/SecurityParams;->getAllowedKeyManagement()Ljava/util/BitSet;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 963
    const/4 v0, 0x1

    return v0

    .line 965
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_20
    goto :goto_6

    .line 966
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isIpProvisioningTimedOut()Z
    .registers 2

    .line 1501
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    return v0
.end method

.method public greylist-max-o isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .registers 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .line 3410
    if-eqz p1, :cond_24

    .line 3411
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_24

    .line 3412
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 3413
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 3414
    const/4 v0, 0x1

    return v0

    .line 3418
    :cond_24
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isNoInternetAccessExpected()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1541
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    return v0
.end method

.method public greylist-max-o isOpenNetwork()Z
    .registers 5

    .line 1821
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->hasWepKeys()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1822
    return v1

    .line 1824
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/SecurityParams;

    .line 1825
    .local v2, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v2}, Landroid/net/wifi/SecurityParams;->isOpenSecurityType()Z

    move-result v3

    if-nez v3, :cond_21

    .line 1826
    return v1

    .line 1828
    .end local v2    # "p":Landroid/net/wifi/SecurityParams;
    :cond_21
    goto :goto_e

    .line 1829
    :cond_22
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isPasspoint()Z
    .registers 3

    .line 3398
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 3399
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_27

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 3401
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 3402
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    .line 3398
    :goto_28
    return v0
.end method

.method public whitelist isRepeaterEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1722
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    return v0
.end method

.method public blacklist isSecurityType(I)Z
    .registers 5
    .param p1, "securityType"    # I

    .line 894
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 895
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 896
    const/4 v0, 0x1

    return v0

    .line 898
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1a
    goto :goto_6

    .line 899
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist isSendDhcpHostnameEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2014
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    return v0
.end method

.method public blacklist isSuiteBCipherEcdheEcdsaEnabled()Z
    .registers 5

    .line 993
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 994
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1}, Landroid/net/wifi/SecurityParams;->getAllowedSuiteBCiphers()Ljava/util/BitSet;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 995
    const/4 v0, 0x1

    return v0

    .line 997
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1f
    goto :goto_6

    .line 998
    :cond_20
    return v2
.end method

.method public blacklist isSuiteBCipherEcdheRsaEnabled()Z
    .registers 5

    .line 1008
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 1009
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1}, Landroid/net/wifi/SecurityParams;->getAllowedSuiteBCiphers()Ljava/util/BitSet;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1010
    return v3

    .line 1012
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1e
    goto :goto_6

    .line 1013
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isUserSelected()Z
    .registers 2

    .line 4470
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    return v0
.end method

.method public whitelist isWifi7Enabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4767
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    return v0
.end method

.method public blacklist isWpaPersonalOnlyConfiguration()Z
    .registers 4

    .line 734
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->isSecurityType(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 735
    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 736
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_1b

    move v1, v2

    goto :goto_1c

    :cond_1b
    nop

    .line 734
    :goto_1c
    return v1
.end method

.method public blacklist needsPreSharedKey()Z
    .registers 4

    .line 4480
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 4481
    .local v1, "params":Landroid/net/wifi/SecurityParams;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 4482
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-nez v2, :cond_29

    .line 4483
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_29

    .line 4486
    .end local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_28
    goto :goto_6

    .line 4484
    .restart local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_29
    :goto_29
    const/4 v0, 0x1

    return v0

    .line 4487
    .end local v1    # "params":Landroid/net/wifi/SecurityParams;
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist setBssidAllowlist(Ljava/util/List;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;)V"
        }
    .end annotation

    .line 1106
    .local p1, "bssidAllowlist":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    if-nez p1, :cond_6

    .line 1107
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    .line 1108
    return-void

    .line 1110
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    .line 1111
    return-void
.end method

.method public whitelist setDeletionPriority(I)V
    .registers 4
    .param p1, "priority"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1251
    if-ltz p1, :cond_5

    .line 1254
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    .line 1255
    return-void

    .line 1252
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Deletion priority must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setDppConfigurator([B)V
    .registers 3
    .param p1, "ecKey"    # [B

    .line 2072
    if-eqz p1, :cond_d

    .line 2073
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    .line 2076
    :cond_d
    return-void
.end method

.method public blacklist setDppConnectionKeys([B[B[B)V
    .registers 6
    .param p1, "connector"    # [B
    .param p2, "cSignKey"    # [B
    .param p3, "netAccessKey"    # [B

    .line 2056
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    if-nez p3, :cond_7

    goto :goto_20

    .line 2060
    :cond_7
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    .line 2061
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    .line 2062
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    .line 2063
    return-void

    .line 2057
    :cond_20
    :goto_20
    const-string v0, "WifiConfiguration"

    const-string v1, "One of DPP key is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    return-void
.end method

.method public blacklist setEncryptedPreSharedKey([B[B)V
    .registers 3
    .param p1, "encryptedPreSharedKey"    # [B
    .param p2, "encryptedPreSharedKeyIv"    # [B

    .line 4508
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    .line 4509
    iput-object p2, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    .line 4510
    return-void
.end method

.method public blacklist setHasPreSharedKeyChanged(Z)V
    .registers 4
    .param p1, "changed"    # Z

    .line 4551
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    .line 4552
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    if-eqz v0, :cond_f

    .line 4553
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    .line 4554
    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    .line 4556
    :cond_f
    return-void
.end method

.method public whitelist setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 7
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .line 4014
    if-nez p1, :cond_10

    .line 4015
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 4016
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4017
    return-void

    .line 4021
    :cond_10
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 4022
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    .line 4024
    .local v0, "proxySettingCopy":Landroid/net/IpConfiguration$ProxySettings;
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v1, v2}, Landroid/net/ProxyInfo;->buildPacProxy(Landroid/net/Uri;I)Landroid/net/ProxyInfo;

    move-result-object v1

    .local v1, "httpProxyCopy":Landroid/net/ProxyInfo;
    goto :goto_47

    .line 4026
    .end local v0    # "proxySettingCopy":Landroid/net/IpConfiguration$ProxySettings;
    .end local v1    # "httpProxyCopy":Landroid/net/ProxyInfo;
    :cond_2b
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    .line 4028
    .restart local v0    # "proxySettingCopy":Landroid/net/IpConfiguration$ProxySettings;
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getExclusionList()[Ljava/lang/String;

    move-result-object v1

    .line 4029
    .local v1, "exclusionList":[Ljava/lang/String;
    if-nez v1, :cond_36

    .line 4030
    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/String;

    .line 4032
    :cond_36
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    .line 4033
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 4032
    invoke-static {v2, v3, v4}, Landroid/net/ProxyInfo;->buildDirectProxy(Ljava/lang/String;ILjava/util/List;)Landroid/net/ProxyInfo;

    move-result-object v2

    move-object v1, v2

    .line 4035
    .local v1, "httpProxyCopy":Landroid/net/ProxyInfo;
    :goto_47
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v2

    if-nez v2, :cond_65

    .line 4036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ProxyInfo is not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WifiConfiguration"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    :cond_65
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v2, v0}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 4039
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v2, v1}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4040
    return-void
.end method

.method public greylist setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .registers 3
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .line 3972
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    .line 3973
    return-void
.end method

.method public whitelist setIpConfiguration(Landroid/net/IpConfiguration;)V
    .registers 3
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    .line 3935
    if-nez p1, :cond_8

    new-instance v0, Landroid/net/IpConfiguration;

    invoke-direct {v0}, Landroid/net/IpConfiguration;-><init>()V

    move-object p1, v0

    .line 3936
    :cond_8
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 3937
    return-void
.end method

.method public blacklist setIpProvisioningTimedOut(Z)V
    .registers 2
    .param p1, "value"    # Z

    .line 1494
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    .line 1495
    return-void
.end method

.method public blacklist setIsUserSelected(Z)Z
    .registers 2
    .param p1, "isUserSelected"    # Z

    .line 4462
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    return p1
.end method

.method public whitelist setMacRandomizationSetting(I)V
    .registers 2
    .param p1, "macRandomizationSetting"    # I

    .line 1922
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    .line 1923
    return-void
.end method

.method public whitelist setNetworkSelectionStatus(Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;)V
    .registers 2
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3323
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3324
    return-void
.end method

.method public greylist-max-o setPasspointManagementObjectTree(Ljava/lang/String;)V
    .registers 2
    .param p1, "passpointManagementObjectTree"    # Ljava/lang/String;

    .line 4059
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    .line 4060
    return-void
.end method

.method public blacklist setPasspointUniqueId(Ljava/lang/String;)V
    .registers 2
    .param p1, "uniqueId"    # Ljava/lang/String;

    .line 4426
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    .line 4427
    return-void
.end method

.method public greylist setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .registers 4
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .line 4048
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 4049
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    .line 4050
    return-void
.end method

.method public greylist setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .registers 3
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .line 3988
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    .line 3989
    return-void
.end method

.method public greylist-max-o setRandomizedMacAddress(Landroid/net/MacAddress;)V
    .registers 4
    .param p1, "mac"    # Landroid/net/MacAddress;

    .line 1982
    if-nez p1, :cond_a

    .line 1983
    const-string v0, "WifiConfiguration"

    const-string v1, "setRandomizedMacAddress received null MacAddress."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    return-void

    .line 1986
    :cond_a
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    .line 1987
    return-void
.end method

.method public whitelist setRepeaterEnabled(Z)V
    .registers 2
    .param p1, "isRepeaterEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1710
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    .line 1711
    return-void
.end method

.method public whitelist setSecurityParams(I)V
    .registers 3
    .param p1, "securityType"    # I

    .line 600
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 601
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->addSecurityParams(I)V

    .line 602
    return-void
.end method

.method public blacklist setSecurityParams(Landroid/net/wifi/SecurityParams;)V
    .registers 3
    .param p1, "params"    # Landroid/net/wifi/SecurityParams;

    .line 628
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 629
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiConfiguration;->addSecurityParams(Landroid/net/wifi/SecurityParams;)V

    .line 630
    return-void
.end method

.method public blacklist setSecurityParams(Ljava/util/BitSet;)V
    .registers 4
    .param p1, "givenAllowedKeyManagement"    # Ljava/util/BitSet;

    .line 611
    if-eqz p1, :cond_13

    .line 615
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 616
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 617
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->convertLegacyFieldsToSecurityParamsIfNeeded()V

    .line 618
    return-void

    .line 612
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid allowed key management mask."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSecurityParams(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;)V"
        }
    .end annotation

    .line 641
    .local p1, "securityParamsList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SecurityParams;>;"
    if-eqz p1, :cond_1f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 644
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    .line 645
    new-instance v0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 646
    invoke-direct {p0}, Landroid/net/wifi/WifiConfiguration;->updateLegacySecurityParams()V

    .line 647
    return-void

    .line 642
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An empty security params list is invalid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setSecurityParamsEnabled(IZ)V
    .registers 6
    .param p1, "securityType"    # I
    .param p2, "enable"    # Z

    .line 810
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 811
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 812
    invoke-virtual {v1, p2}, Landroid/net/wifi/SecurityParams;->setEnabled(Z)V

    .line 813
    return-void

    .line 815
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1c
    goto :goto_6

    .line 816
    :cond_1d
    return-void
.end method

.method public blacklist setSecurityParamsIsAddedByAutoUpgrade(IZ)V
    .registers 6
    .param p1, "securityType"    # I
    .param p2, "isAddedByAutoUpgrade"    # Z

    .line 837
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SecurityParams;

    .line 838
    .local v1, "p":Landroid/net/wifi/SecurityParams;
    invoke-virtual {v1, p1}, Landroid/net/wifi/SecurityParams;->isSecurityType(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 839
    invoke-virtual {v1, p2}, Landroid/net/wifi/SecurityParams;->setIsAddedByAutoUpgrade(Z)V

    .line 840
    return-void

    .line 842
    .end local v1    # "p":Landroid/net/wifi/SecurityParams;
    :cond_1c
    goto :goto_6

    .line 843
    :cond_1d
    return-void
.end method

.method public whitelist setSendDhcpHostnameEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2004
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    .line 2005
    return-void
.end method

.method public greylist setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .registers 3
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .line 3954
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 3955
    return-void
.end method

.method public blacklist setSubscriptionGroup(Landroid/os/ParcelUuid;)V
    .registers 2
    .param p1, "subscriptionGroup"    # Landroid/os/ParcelUuid;

    .line 4708
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 4709
    return-void
.end method

.method public whitelist setVendorData(Ljava/util/List;)V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;)V"
        }
    .end annotation

    .line 4751
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4754
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    .line 4756
    return-void

    .line 4752
    :cond_11
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setWifi7Enabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 4779
    iput-boolean p1, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    .line 4780
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 21

    .line 3452
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3453
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v2, :cond_11

    .line 3454
    const-string v2, "* "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1b

    .line 3455
    :cond_11
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1b

    .line 3456
    const-string v2, "- DSBLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3458
    :cond_1b
    :goto_1b
    const-string v2, "ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3459
    const-string v3, " PROVIDER-NAME: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3460
    const-string v3, " BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FQDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3461
    const-string v3, " HOME-PROVIDER-NETWORK: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3462
    const-string v3, " PRIO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3463
    const-string v3, " HIDDEN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3464
    const-string v3, " PMF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3465
    const-string v3, " CarrierId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3466
    const-string v3, " SubscriptionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3467
    const-string v3, " SubscriptionGroup: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3468
    const-string v3, " Currently Connected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3469
    const-string v3, " User Selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3470
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3473
    const-string v2, " NetworkSelectionStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3474
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3475
    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3476
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v2

    if-lez v2, :cond_124

    .line 3477
    const-string v2, " mNetworkSelectionDisableReason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3478
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3479
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3481
    const/4 v2, 0x0

    .line 3482
    .local v2, "index":I
    :goto_f9
    const/16 v5, 0x10

    if-ge v2, v5, :cond_124

    .line 3483
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v5

    if-eqz v5, :cond_121

    .line 3484
    nop

    .line 3485
    invoke-static {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    .line 3484
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3486
    const-string v6, " counter:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3487
    invoke-virtual {v6, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3488
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3482
    :cond_121
    add-int/lit8 v2, v2, 0x1

    goto :goto_f9

    .line 3492
    .end local v2    # "index":I
    :cond_124
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14a

    .line 3493
    const-string v2, " connect choice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3494
    const-string v2, " connect choice rssi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3495
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getConnectChoiceRssi()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3497
    :cond_14a
    const-string v2, " hasEverConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3498
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3499
    const-string v2, " hasNeverDetectedCaptivePortal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3500
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasNeverDetectedCaptivePortal()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3501
    const-string v2, " hasEverValidatedInternetAccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3502
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverValidatedInternetAccess()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3503
    const-string v2, " mCandidateSecurityParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3504
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getCandidateSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3505
    const-string v2, " mLastUsedSecurityParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3506
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getLastUsedSecurityParams()Landroid/net/wifi/SecurityParams;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3508
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-lez v2, :cond_1b4

    .line 3509
    const-string v2, " numAssociation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3511
    :cond_1b4
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v2, :cond_1c6

    .line 3512
    const-string v2, " numNoInternetAccessReports "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3513
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3515
    :cond_1c6
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v2, :cond_1cf

    const-string v2, " validatedInternetAccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3516
    :cond_1cf
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-eqz v2, :cond_1d9

    .line 3517
    const-string v2, " shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1de

    .line 3519
    :cond_1d9
    const-string v2, " not-shared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3521
    :goto_1de
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v2, :cond_1e7

    const-string v2, " ephemeral"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3522
    :cond_1e7
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    if-eqz v2, :cond_1f0

    const-string v2, " osu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3523
    :cond_1f0
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    if-eqz v2, :cond_1f9

    const-string v2, " trusted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3524
    :cond_1f9
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    if-eqz v2, :cond_202

    const-string v2, " restricted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3525
    :cond_202
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    if-eqz v2, :cond_20b

    const-string v2, " oemPaid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3526
    :cond_20b
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    if-eqz v2, :cond_214

    const-string v2, " oemPrivate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3527
    :cond_214
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    if-eqz v2, :cond_21d

    const-string v2, " carrierMerged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3528
    :cond_21d
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz v2, :cond_226

    const-string v2, " fromWifiNetworkSuggestion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3529
    :cond_226
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v2, :cond_22f

    const-string v2, " fromWifiNetworkSpecifier"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3530
    :cond_22f
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-eqz v2, :cond_238

    const-string v2, " meteredHint"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3531
    :cond_238
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    if-eqz v2, :cond_241

    const-string v2, " repeaterEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    :cond_241
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-eqz v2, :cond_24a

    const-string v2, " useExternalScores"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3533
    :cond_24a
    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    if-nez v2, :cond_276

    iget-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    if-eqz v2, :cond_279

    .line 3537
    :cond_276
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    :cond_279
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-eqz v2, :cond_28c

    .line 3540
    const-string v2, " meteredOverride "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3542
    :cond_28c
    const-string v2, " macRandomizationSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3543
    const-string v2, " mRandomizedMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    const-string v2, " randomizedMacExpirationTimeMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3545
    iget-wide v5, v0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const-string v6, "<none>"

    if-nez v5, :cond_2bc

    move-object v5, v6

    goto :goto_2c2

    .line 3546
    :cond_2bc
    iget-wide v9, v0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    invoke-static {v9, v10}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v5

    .line 3545
    :goto_2c2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3546
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3547
    const-string v2, " randomizedMacLastModifiedTimeMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3548
    iget-wide v9, v0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    cmp-long v5, v9, v7

    if-nez v5, :cond_2d6

    goto :goto_2dc

    .line 3549
    :cond_2d6
    iget-wide v5, v0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    invoke-static {v5, v6}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v6

    .line 3548
    :goto_2dc
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3549
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3550
    const-string v2, " mIsSendDhcpHostnameEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v5, v0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3551
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3552
    const-string v2, " deletionPriority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3553
    const-string v2, " KeyMgmt:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_307
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    const-string v6, "??"

    const-string v9, " "

    if-ge v2, v5, :cond_331

    .line 3555
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_32e

    .line 3556
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3557
    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_32b

    .line 3558
    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32e

    .line 3560
    :cond_32b
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    :cond_32e
    :goto_32e
    add-int/lit8 v2, v2, 0x1

    goto :goto_307

    .line 3564
    .end local v2    # "k":I
    :cond_331
    const-string v2, " Protocols:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    const/4 v2, 0x0

    .local v2, "p":I
    :goto_337
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v2, v5, :cond_35d

    .line 3566
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_35a

    .line 3567
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    sget-object v5, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_357

    .line 3569
    sget-object v5, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35a

    .line 3571
    :cond_357
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    :cond_35a
    :goto_35a
    add-int/lit8 v2, v2, 0x1

    goto :goto_337

    .line 3575
    .end local v2    # "p":I
    :cond_35d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3576
    const-string v2, " AuthAlgorithms:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_366
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v2, v5, :cond_38c

    .line 3578
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_389

    .line 3579
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3580
    sget-object v5, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_386

    .line 3581
    sget-object v5, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_389

    .line 3583
    :cond_386
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3577
    :cond_389
    :goto_389
    add-int/lit8 v2, v2, 0x1

    goto :goto_366

    .line 3587
    .end local v2    # "a":I
    :cond_38c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3588
    const-string v2, " PairwiseCiphers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    const/4 v2, 0x0

    .local v2, "pc":I
    :goto_395
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v2, v5, :cond_3bb

    .line 3590
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3b8

    .line 3591
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3592
    sget-object v5, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3b5

    .line 3593
    sget-object v5, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3b8

    .line 3595
    :cond_3b5
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3589
    :cond_3b8
    :goto_3b8
    add-int/lit8 v2, v2, 0x1

    goto :goto_395

    .line 3599
    .end local v2    # "pc":I
    :cond_3bb
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3600
    const-string v2, " GroupCiphers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3601
    const/4 v2, 0x0

    .local v2, "gc":I
    :goto_3c4
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v2, v5, :cond_3ea

    .line 3602
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_3e7

    .line 3603
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3604
    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3e4

    .line 3605
    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3e7

    .line 3607
    :cond_3e4
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3601
    :cond_3e7
    :goto_3e7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c4

    .line 3611
    .end local v2    # "gc":I
    :cond_3ea
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3612
    const-string v2, " GroupMgmtCiphers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    const/4 v2, 0x0

    .local v2, "gmc":I
    :goto_3f3
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v2, v5, :cond_419

    .line 3614
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_416

    .line 3615
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3616
    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_413

    .line 3617
    sget-object v5, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_416

    .line 3619
    :cond_413
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3613
    :cond_416
    :goto_416
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f3

    .line 3623
    .end local v2    # "gmc":I
    :cond_419
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3624
    const-string v2, " SuiteBCiphers:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    const/4 v2, 0x0

    .local v2, "sbc":I
    :goto_422
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->size()I

    move-result v5

    if-ge v2, v5, :cond_448

    .line 3626
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_445

    .line 3627
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3628
    sget-object v5, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_442

    .line 3629
    sget-object v5, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_445

    .line 3631
    :cond_442
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3625
    :cond_445
    :goto_445
    add-int/lit8 v2, v2, 0x1

    goto :goto_422

    .line 3635
    .end local v2    # "sbc":I
    :cond_448
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " PSK/SAE: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3636
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_45a

    .line 3637
    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3640
    :cond_45a
    const-string v2, "\nSecurityParams List:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3641
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v5, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda4;

    invoke-direct {v5, v1}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-interface {v2, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3643
    const-string v2, "\nEnterprise config:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3644
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3646
    const-string v2, "IP config:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3647
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3649
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_498

    .line 3650
    const-string v2, " networkSelectionBSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    .line 3651
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionBSSID()Ljava/lang/String;

    move-result-object v5

    .line 3650
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3653
    :cond_498
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 3654
    .local v5, "now_ms":J
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v10

    const-wide/16 v12, -0x1

    cmp-long v2, v10, v12

    const-string v10, "sec "

    const-wide/16 v14, 0x3e8

    if-eqz v2, :cond_4d4

    .line 3656
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3657
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v16

    sub-long v16, v5, v16

    .line 3658
    .local v16, "diff":J
    cmp-long v2, v16, v7

    if-gtz v2, :cond_4c1

    .line 3659
    const-string v2, " blackListed since <incorrect>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d4

    .line 3661
    :cond_4c1
    const-string v2, " blackListed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v18, v16, v14

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3664
    .end local v16    # "diff":J
    :cond_4d4
    :goto_4d4
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableEndTime()J

    move-result-wide v16

    cmp-long v2, v16, v12

    if-eqz v2, :cond_505

    .line 3666
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3667
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableEndTime()J

    move-result-wide v11

    sub-long/2addr v11, v5

    .line 3668
    .local v11, "diff":J
    cmp-long v2, v11, v7

    if-gtz v2, :cond_4f2

    .line 3669
    const-string v2, " blockListed remaining time <incorrect>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_505

    .line 3671
    :cond_4f2
    const-string v2, " blocklist end in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-long v13, v11, v14

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3672
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3675
    .end local v11    # "diff":J
    :cond_505
    :goto_505
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-eqz v2, :cond_514

    const-string v2, " cuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3676
    :cond_514
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v2, :cond_523

    const-string v2, " cname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3677
    :cond_523
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    if-eqz v2, :cond_532

    const-string v2, " luid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3678
    :cond_532
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v2, :cond_541

    const-string v2, " lname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3679
    :cond_541
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    if-eqz v2, :cond_550

    const-string v2, " updateIdentifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3680
    :cond_550
    const-string v2, " lcuid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v10, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3681
    const-string v2, " allowAutojoin="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3682
    const-string v2, " noInternetAccessExpected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3683
    const-string v2, " mostRecentlyConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->isMostRecentlyConnected:Z

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3685
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3687
    iget-wide v10, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    cmp-long v2, v10, v7

    if-eqz v2, :cond_59a

    .line 3688
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3689
    const-string v2, "lastConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v10, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    invoke-static {v10, v11}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3690
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3692
    :cond_59a
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3693
    iget-wide v10, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdated:J

    cmp-long v2, v10, v7

    if-eqz v2, :cond_5b8

    .line 3694
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3695
    const-string v2, "lastUpdated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdated:J

    invoke-static {v7, v8}, Landroid/net/wifi/WifiConfiguration;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3696
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3698
    :cond_5b8
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3699
    const-string v2, "numRebootsSinceLastUse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, v0, Landroid/net/wifi/WifiConfiguration;->numRebootsSinceLastUse:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3700
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v2, :cond_5f1

    .line 3701
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5f1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3702
    .local v7, "key":Ljava/lang/String;
    const-string v8, " linked: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3703
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3704
    .end local v7    # "key":Ljava/lang/String;
    goto :goto_5d8

    .line 3706
    :cond_5f1
    const-string v2, "recentFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Association Rejection code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 3707
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", last update time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    .line 3708
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getLastUpdateTimeSinceBootMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3709
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    if-eqz v2, :cond_645

    .line 3710
    const-string v2, "bssidAllowList: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3711
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_629
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MacAddress;

    .line 3712
    .local v3, "bssid":Landroid/net/MacAddress;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3713
    .end local v3    # "bssid":Landroid/net/MacAddress;
    goto :goto_629

    .line 3714
    :cond_63f
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64a

    .line 3716
    :cond_645
    const-string v2, "bssidAllowlist unset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3718
    :goto_64a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3719
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    if-eqz v2, :cond_665

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_665

    .line 3720
    const-string v2, "vendorData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_66a

    .line 3722
    :cond_665
    const-string v2, "vendorData unset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    :goto_66a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3725
    const-string v2, "IsDppConfigurator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3726
    const-string v2, "HasEncryptedPreSharedKey: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->hasEncryptedPreSharedKey()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3727
    const-string v2, " setWifi7Enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3728
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 4186
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4187
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4188
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mNetworkSelectionStatus:Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4189
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4190
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4191
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4192
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4193
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4194
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4195
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isHomeProviderNetwork:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4196
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4197
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_3d
    if-ge v3, v1, :cond_47

    aget-wide v4, v0, v3

    .line 4198
    .local v4, "roamingConsortiumId":J
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 4197
    .end local v4    # "roamingConsortiumId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 4200
    :cond_47
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4201
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v0

    :goto_4f
    if-ge v2, v1, :cond_59

    aget-object v3, v0, v2

    .line 4202
    .local v3, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4201
    .end local v3    # "wepKey":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    .line 4204
    :cond_59
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4205
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4206
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->mDeletionPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4207
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4208
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4209
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4211
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4212
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4213
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4214
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4215
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4216
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupManagementCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4217
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedSuiteBCiphers:Ljava/util/BitSet;

    invoke-static {p1, v0}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 4219
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4220
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSecurityParamsList:Ljava/util/List;

    new-instance v1, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1, p2}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 4222
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4224
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4225
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4226
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4227
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4228
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isLegacyPasspointConfig:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4229
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4230
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->trusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4231
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPaid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4232
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->oemPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4233
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierMerged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4234
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4235
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4236
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4237
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsRepeaterEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4238
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4239
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->useExternalScores:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4240
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4241
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4242
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4243
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4244
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4245
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4246
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4247
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4248
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4249
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4250
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4251
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4252
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointManagementObjectTree:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4253
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getAssociationStatus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4254
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->recentFailure:Landroid/net/wifi/WifiConfiguration$RecentFailure;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$RecentFailure;->getLastUpdateTimeSinceBootMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4255
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4256
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->macRandomizationSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4257
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsSendDhcpHostnameEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4258
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->osu:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4259
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacExpirationTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4260
    iget-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->randomizedMacLastModifiedTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 4261
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4262
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mPasspointUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4263
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4264
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->restricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4265
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 4266
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mBssidAllowlist:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4267
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsDppConfigurator:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4268
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppPrivateEcKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4269
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppConnector:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4270
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppCSignKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4271
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mDppNetAccessKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4272
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->isCurrentlyConnected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4273
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIsUserSelected:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4274
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mHasPreSharedKeyChanged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4275
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4276
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mEncryptedPreSharedKeyIv:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 4277
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpProvisioningTimedOut:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4278
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4279
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->mWifi7Enabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 4280
    return-void
.end method
