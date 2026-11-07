.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/net/TransportInfo;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiInfo$Builder;,
        Landroid/net/wifi/WifiInfo$IsPrimaryValues;
    }
.end annotation


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist DPM_SECURITY_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist FREQUENCY_UNITS:Ljava/lang/String; = "MHz"

.field public static final whitelist INVALID_RSSI:I = -0x7f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist IS_PRIMARY_FALSE:I = 0x0

.field private static final blacklist IS_PRIMARY_NO_PERMISSION:I = -0x1

.field private static final blacklist IS_PRIMARY_TRUE:I = 0x1

.field public static final whitelist LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field public static final whitelist LINK_SPEED_UNKNOWN:I = -0x1

.field public static final greylist-max-o MAX_RSSI:I = 0xc8

.field public static final greylist-max-o MIN_RSSI:I = -0x7e

.field public static final whitelist SECURITY_TYPE_DPP:I = 0xd

.field public static final whitelist SECURITY_TYPE_EAP:I = 0x3

.field public static final whitelist SECURITY_TYPE_EAP_WPA3_ENTERPRISE:I = 0x9

.field public static final whitelist SECURITY_TYPE_EAP_WPA3_ENTERPRISE_192_BIT:I = 0x5

.field public static final whitelist SECURITY_TYPE_OPEN:I = 0x0

.field public static final whitelist SECURITY_TYPE_OSEN:I = 0xa

.field public static final whitelist SECURITY_TYPE_OWE:I = 0x6

.field public static final whitelist SECURITY_TYPE_PASSPOINT_R1_R2:I = 0xb

.field public static final whitelist SECURITY_TYPE_PASSPOINT_R3:I = 0xc

.field public static final whitelist SECURITY_TYPE_PSK:I = 0x2

.field public static final whitelist SECURITY_TYPE_SAE:I = 0x4

.field public static final whitelist SECURITY_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist SECURITY_TYPE_WAPI_CERT:I = 0x8

.field public static final whitelist SECURITY_TYPE_WAPI_PSK:I = 0x7

.field public static final whitelist SECURITY_TYPE_WEP:I = 0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "WifiInfo"

.field public static final blacklist UNKNOWN_FREQUENCY:I = -0x1

.field private static final greylist-max-o stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAffiliatedMloLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mAffiliatedMloLinksMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApMldMacAddress:Landroid/net/MacAddress;

.field private blacklist mApMloLinkId:I

.field private blacklist mApTidToLinkMappingNegotiationSupported:Z

.field private greylist-max-p mBSSID:Ljava/lang/String;

.field private blacklist mCarrierMerged:Z

.field private greylist-max-o mEphemeral:Z

.field private blacklist mFqdn:Ljava/lang/String;

.field private greylist-max-o mFrequency:I

.field private blacklist mInformationElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mIpAddress:Ljava/net/InetAddress;

.field private blacklist mIsHiddenSsid:Z

.field private blacklist mIsPrimary:I

.field private blacklist mIsUsable:Z

.field private blacklist mLastRssiUpdateMillis:J

.field private greylist-max-o mLinkSpeed:I

.field private blacklist mLostTxPacketsPerSecond:D

.field private greylist mMacAddress:Ljava/lang/String;

.field private blacklist mMaxSupportedRxLinkSpeed:I

.field private blacklist mMaxSupportedTxLinkSpeed:I

.field private greylist-max-o mMeteredHint:Z

.field private greylist-max-o mNetworkId:I

.field private blacklist mNetworkKey:Ljava/lang/String;

.field private blacklist mOemPaid:Z

.field private blacklist mOemPrivate:Z

.field private blacklist mOsuAp:Z

.field private blacklist mPasspointUniqueId:Ljava/lang/String;

.field private blacklist mProviderFriendlyName:Ljava/lang/String;

.field private blacklist mRequestingPackageName:Ljava/lang/String;

.field private blacklist mRestricted:Z

.field private greylist-max-o mRssi:I

.field private blacklist mRxLinkSpeed:I

.field private blacklist mSecurityType:I

.field private blacklist mSubscriptionId:I

.field private blacklist mSuccessfulRxPacketsPerSecond:D

.field private blacklist mSuccessfulTxPacketsPerSecond:D

.field private greylist-max-o mSupplicantState:Landroid/net/wifi/SupplicantState;

.field private blacklist mTrusted:Z

.field private blacklist mTxLinkSpeed:I

.field private blacklist mTxRetriedTxPacketsPerSecond:D

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mWifiSsid:Landroid/net/wifi/WifiSsid;

.field private blacklist mWifiStandard:I

.field public greylist-max-o rxSuccess:J

.field public greylist score:I

.field public greylist-max-o txBad:J

.field public greylist-max-o txRetries:J

.field public greylist-max-o txSuccess:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAffiliatedMloLinks(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApMldMacAddress(Landroid/net/wifi/WifiInfo;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApMloLinkId(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApTidToLinkMappingNegotiationSupported(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBSSID(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCarrierMerged(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEphemeral(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFqdn(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmInformationElements(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsPrimary(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsUsable(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLostTxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMacAddress(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxSupportedRxLinkSpeed(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMaxSupportedTxLinkSpeed(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMeteredHint(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkKey(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOemPaid(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOemPrivate(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOsuAp(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPasspointUniqueId(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmProviderFriendlyName(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestingPackageName(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRestricted(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecurityType(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubscriptionId(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuccessfulRxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSuccessfulTxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSupplicantState(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTrusted(Landroid/net/wifi/WifiInfo;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTxRetriedTxPacketsPerSecond(Landroid/net/wifi/WifiInfo;D)V
    .registers 3

    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVendorData(Landroid/net/wifi/WifiInfo;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiSsid(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiSsid;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiStandard(Landroid/net/wifi/WifiInfo;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 90
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 103
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1686
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 5

    .line 502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mIsHiddenSsid:Z

    .line 141
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinksMap:Landroid/util/SparseArray;

    .line 271
    const-string v1, "02:00:00:00:00:00"

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 503
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 504
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 505
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 506
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    .line 507
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 508
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 509
    sget-object v3, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 510
    const/16 v3, -0x7f

    iput v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 511
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 512
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 513
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 514
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 515
    iput v0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 516
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    .line 517
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    .line 518
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    .line 519
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/WifiInfo;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;

    .line 579
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;J)V

    .line 580
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/WifiInfo;J)V
    .registers 10
    .param p1, "source"    # Landroid/net/wifi/WifiInfo;
    .param p2, "redactions"    # J

    .line 586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mIsHiddenSsid:Z

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinksMap:Landroid/util/SparseArray;

    .line 271
    const-string v0, "02:00:00:00:00:00"

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 453
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 587
    if-eqz p1, :cond_16c

    .line 588
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 589
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 590
    move-object v1, v0

    goto :goto_24

    :cond_22
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    :goto_24
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 591
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 592
    move-object v1, v2

    goto :goto_31

    :cond_2f
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    :goto_31
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 593
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    .line 594
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    if-eqz v1, :cond_60

    .line 595
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 596
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/MloLink;

    .line 597
    .local v3, "link":Landroid/net/wifi/MloLink;
    iget-object v4, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    new-instance v5, Landroid/net/wifi/MloLink;

    invoke-direct {v5, v3, p2, p3}, Landroid/net/wifi/MloLink;-><init>(Landroid/net/wifi/MloLink;J)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    .end local v3    # "link":Landroid/net/wifi/MloLink;
    goto :goto_48

    :cond_5f
    goto :goto_66

    .line 600
    :cond_60
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 602
    :goto_66
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 603
    move-object v1, v2

    goto :goto_70

    :cond_6e
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    :goto_70
    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 604
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    const/4 v3, -0x1

    if-eqz v1, :cond_7b

    .line 605
    move v1, v3

    goto :goto_7d

    :cond_7b
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    :goto_7d
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 606
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 607
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 608
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 609
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 610
    iget v1, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 611
    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 612
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocalMacAddressFields(J)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 613
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v1

    if-eqz v1, :cond_a4

    goto :goto_a7

    .line 614
    :cond_a4
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_a8

    :cond_a7
    :goto_a7
    nop

    :goto_a8
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 615
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 616
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 617
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 618
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    .line 619
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 620
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 621
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 622
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactNetworkSettingsFields(J)Z

    move-result v0

    if-eqz v0, :cond_ce

    move-object v0, v2

    goto :goto_d0

    .line 623
    :cond_ce
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    :goto_d0
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    .line 624
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 625
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 626
    move-object v0, v2

    goto :goto_e0

    :cond_de
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    :goto_e0
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    .line 627
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 628
    move-object v0, v2

    goto :goto_ec

    :cond_ea
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    :goto_ec
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    .line 629
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 630
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txBad:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 631
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txRetries:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 632
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 633
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 634
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 635
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 636
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 637
    iget-wide v0, p1, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 638
    iget v0, p1, Landroid/net/wifi/WifiInfo;->score:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 639
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 640
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 641
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 642
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 643
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 644
    move-object v0, v2

    goto :goto_130

    :cond_12e
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    :goto_130
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    .line 645
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    if-eqz v0, :cond_145

    .line 646
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-nez v0, :cond_145

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    .line 649
    :cond_145
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactNetworkSettingsFields(J)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 650
    goto :goto_14e

    :cond_14c
    iget v3, p1, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    :goto_14e
    iput v3, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 651
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 652
    invoke-direct {p0, p2, p3}, Landroid/net/wifi/WifiInfo;->shouldRedactLocationSensitiveFields(J)Z

    move-result v0

    if-eqz v0, :cond_15b

    .line 653
    goto :goto_15d

    :cond_15b
    iget-object v2, p1, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    :goto_15d
    iput-object v2, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    .line 654
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    .line 656
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    .line 658
    :cond_16c
    return-void
.end method

.method public static blacklist convertSecurityTypeToDpmWifiSecurity(I)I
    .registers 2
    .param p0, "securityType"    # I

    .line 2072
    packed-switch p0, :pswitch_data_e

    .line 2090
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 2088
    :pswitch_5
    const/4 v0, 0x3

    return v0

    .line 2086
    :pswitch_7
    const/4 v0, 0x2

    return v0

    .line 2080
    :pswitch_9
    const/4 v0, 0x1

    return v0

    .line 2075
    :pswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_7
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public static blacklist convertWifiConfigurationSecurityType(I)I
    .registers 2
    .param p0, "wifiConfigSecurity"    # I

    .line 2031
    packed-switch p0, :pswitch_data_24

    .line 2059
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 2057
    :pswitch_5
    const/16 v0, 0xd

    return v0

    .line 2055
    :pswitch_8
    const/16 v0, 0xc

    return v0

    .line 2053
    :pswitch_b
    const/16 v0, 0xb

    return v0

    .line 2049
    :pswitch_e
    const/16 v0, 0x9

    return v0

    .line 2047
    :pswitch_11
    const/16 v0, 0x8

    return v0

    .line 2045
    :pswitch_14
    const/4 v0, 0x7

    return v0

    .line 2043
    :pswitch_16
    const/4 v0, 0x6

    return v0

    .line 2051
    :pswitch_18
    const/4 v0, 0x5

    return v0

    .line 2041
    :pswitch_1a
    const/4 v0, 0x4

    return v0

    .line 2039
    :pswitch_1c
    const/4 v0, 0x3

    return v0

    .line 2037
    :pswitch_1e
    const/4 v0, 0x2

    return v0

    .line 2035
    :pswitch_20
    const/4 v0, 0x1

    return v0

    .line 2033
    :pswitch_22
    const/4 v0, 0x0

    return v0

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_18
        :pswitch_16
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public static whitelist getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .registers 2
    .param p0, "suppState"    # Landroid/net/wifi/SupplicantState;

    .line 1499
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method private blacklist getSortedMloLinkList(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation

    .line 1840
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/MloLink;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1841
    .local v0, "newList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/MloLink;>;"
    new-instance v1, Landroid/net/wifi/WifiInfo$2;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiInfo$2;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1848
    return-object v0
.end method

.method private blacklist mapAffiliatedMloLinks()V
    .registers 5

    .line 837
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinksMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 838
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/MloLink;

    .line 839
    .local v1, "link":Landroid/net/wifi/MloLink;
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinksMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 840
    .end local v1    # "link":Landroid/net/wifi/MloLink;
    goto :goto_b

    .line 841
    :cond_21
    return-void
.end method

.method public static greylist removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .line 1541
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 1542
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 1543
    .local v0, "length":I
    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_23

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_23

    .line 1544
    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1546
    :cond_23
    return-object p0
.end method

.method public static whitelist sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1533
    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist shouldRedactLocalMacAddressFields(J)Z
    .registers 7
    .param p1, "redactions"    # J

    .line 1615
    const-wide/16 v0, 0x2

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist shouldRedactLocationSensitiveFields(J)Z
    .registers 7
    .param p1, "redactions"    # J

    .line 1611
    const-wide/16 v0, 0x1

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private blacklist shouldRedactNetworkSettingsFields(J)Z
    .registers 7
    .param p1, "redactions"    # J

    .line 1619
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method static greylist-max-o valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .registers 3
    .param p0, "stateName"    # Ljava/lang/String;

    .line 1514
    const-string v0, "4WAY_HANDSHAKE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1515
    sget-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    return-object v0

    .line 1518
    :cond_b
    :try_start_b
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_15} :catch_16

    return-object v0

    .line 1519
    :catch_16
    move-exception v0

    .line 1520
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    return-object v1
.end method


# virtual methods
.method public blacklist clearCurrentSecurityType()V
    .registers 2

    .line 2011
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 2012
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1607
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist enableApTidToLinkMappingNegotiationSupport(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .line 2137
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    .line 2138
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "that"    # Ljava/lang/Object;

    .line 1853
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1856
    :cond_4
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return v2

    .line 1858
    :cond_c
    instance-of v1, p1, Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_11

    return v2

    .line 1860
    :cond_11
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1863
    .local v1, "thatWifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiInfo;->getSortedMloLinkList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 1864
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiInfo;->getSortedMloLinkList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1863
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 1865
    return v2

    .line 1868
    :cond_27
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 1869
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1870
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    if-ne v3, v4, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 1872
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 1873
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 1874
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 1875
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 1876
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 1877
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 1878
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 1879
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 1880
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 1881
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 1882
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 1883
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 1884
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 1885
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 1886
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    .line 1887
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 1888
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    .line 1889
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    .line 1890
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 1891
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 1892
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->txBad:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 1893
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->txRetries:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 1894
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->txSuccess:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 1895
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 1896
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 1897
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 1898
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1897
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 1899
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 1900
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1899
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-wide v3, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 1901
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-wide v4, v1, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 1902
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1901
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 1903
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 1904
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 1905
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1906
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1907
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    .line 1908
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    .line 1909
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    if-ne v3, v4, :cond_2ae

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    iget v4, v1, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    if-ne v3, v4, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    if-ne v3, v4, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    .line 1913
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    iget-boolean v4, v1, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    if-ne v3, v4, :cond_2ae

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    .line 1916
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2ae

    goto :goto_2af

    :cond_2ae
    move v0, v2

    .line 1868
    :goto_2af
    return v0
.end method

.method public blacklist getAffiliatedMloLink(I)Landroid/net/wifi/MloLink;
    .registers 3
    .param p1, "linkId"    # I

    .line 964
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinksMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/MloLink;

    return-object v0
.end method

.method public whitelist getAffiliatedMloLinks()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation

    .line 959
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getApMldMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 929
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getApMloLinkId()I
    .registers 2

    .line 943
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    return v0
.end method

.method public whitelist getApplicableRedactions()J
    .registers 3

    .line 1993
    const-wide/16 v0, 0x7

    return-wide v0
.end method

.method public whitelist getAssociatedMloLinks()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation

    .line 981
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 982
    .local v0, "associatedMloLinks":Ljava/util/ArrayList;
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getAffiliatedMloLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/MloLink;

    .line 983
    .local v2, "link":Landroid/net/wifi/MloLink;
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_27

    .line 984
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2a

    .line 985
    :cond_27
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    .end local v2    # "link":Landroid/net/wifi/MloLink;
    :cond_2a
    goto :goto_d

    .line 988
    :cond_2b
    return-object v0
.end method

.method public whitelist getBSSID()Ljava/lang/String;
    .registers 2

    .line 912
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCurrentSecurityType()I
    .registers 2

    .line 2020
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    return v0
.end method

.method public whitelist getFrequency()I
    .registers 2

    .line 1140
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public whitelist getHiddenSSID()Z
    .registers 2

    .line 1481
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mIsHiddenSsid:Z

    return v0
.end method

.method public whitelist getInformationElements()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 1798
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1799
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getIpAddress()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1469
    const/4 v0, 0x0

    .line 1470
    .local v0, "result":I
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_f

    .line 1471
    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    check-cast v1, Ljava/net/Inet4Address;

    invoke-static {v1}, Lcom/android/wifi/x/com/android/net/module/util/Inet4AddressUtils;->inet4AddressToIntHTL(Ljava/net/Inet4Address;)I

    move-result v0

    .line 1473
    :cond_f
    return v0
.end method

.method public blacklist getLastRssiUpdateMillis()J
    .registers 3

    .line 1020
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastRssiUpdateMillis:J

    return-wide v0
.end method

.method public whitelist getLinkSpeed()I
    .registers 2

    .line 1048
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public whitelist getLostTxPacketsPerSecond()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 367
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    return-wide v0
.end method

.method public whitelist getMacAddress()Ljava/lang/String;
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxSupportedRxLinkSpeedMbps()I
    .registers 2

    .line 1113
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    return v0
.end method

.method public whitelist getMaxSupportedTxLinkSpeedMbps()I
    .registers 2

    .line 1076
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    return v0
.end method

.method public greylist getMeteredHint()Z
    .registers 2

    .line 1221
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public whitelist getNetworkId()I
    .registers 2

    .line 1439
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public whitelist getNetworkKey()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2118
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPasspointFqdn()Ljava/lang/String;
    .registers 2

    .line 1363
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPasspointProviderFriendlyName()Ljava/lang/String;
    .registers 2

    .line 1381
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPasspointUniqueId()Ljava/lang/String;
    .registers 2

    .line 1771
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRequestingPackageName()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1397
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getRetriedTxPacketsPerSecond()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 386
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    return-wide v0
.end method

.method public whitelist getRssi()I
    .registers 2

    .line 1002
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public whitelist getRxLinkSpeedMbps()I
    .registers 2

    .line 1104
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    return v0
.end method

.method public whitelist getSSID()Ljava/lang/String;
    .registers 4

    .line 798
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 799
    .local v0, "ssid":Landroid/net/wifi/WifiSsid;
    if-eqz v0, :cond_f

    .line 800
    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    .local v1, "ssidString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 802
    return-object v1

    .line 805
    .end local v1    # "ssidString":Ljava/lang/String;
    :cond_f
    const-string v1, "<unknown ssid>"

    return-object v1
.end method

.method public whitelist getScore()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 444
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    return v0
.end method

.method public whitelist getSubscriptionId()I
    .registers 2

    .line 1415
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1418
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    return v0

    .line 1416
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getSuccessfulRxPacketsPerSecond()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 424
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    return-wide v0
.end method

.method public whitelist getSuccessfulTxPacketsPerSecond()D
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 405
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    return-wide v0
.end method

.method public whitelist getSupplicantState()Landroid/net/wifi/SupplicantState;
    .registers 2

    .line 1448
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public whitelist getTxLinkSpeedMbps()I
    .registers 2

    .line 1067
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    return v0
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

    .line 2152
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2155
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    return-object v0

    .line 2153
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist getWifiSsid()Landroid/net/wifi/WifiSsid;
    .registers 2

    .line 811
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public whitelist getWifiStandard()I
    .registers 2

    .line 1036
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    return v0
.end method

.method public greylist-max-o hasRealMacAddress()Z
    .registers 3

    .line 1203
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v0, "02:00:00:00:00:00"

    iget-object v1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 49

    .line 1922
    move-object/from16 v0, p0

    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 1924
    :cond_d
    iget-object v2, v0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v3, v0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    .line 1927
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 1929
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 1930
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 1932
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 1933
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 1934
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 1935
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-object v14, v0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iget-object v15, v0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 1938
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 1939
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 1940
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 1941
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 1942
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 1943
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v21

    iget-object v1, v0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    move-object/from16 v22, v1

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 1945
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    iget-object v1, v0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    move-object/from16 v24, v1

    iget-object v1, v0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    move-object/from16 v25, v1

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 1948
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v27, v2

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 1949
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v28, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 1950
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v29, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 1951
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v30, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 1952
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v31, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 1953
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v32, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 1954
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v33, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 1955
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v34, v1

    iget-wide v1, v0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 1956
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget v2, v0, Landroid/net/wifi/WifiInfo;->score:I

    .line 1957
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    iget-boolean v2, v0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 1958
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v36

    iget v2, v0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 1959
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    iget v2, v0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1960
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    iget v2, v0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1961
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    iget-object v2, v0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    move-object/from16 v40, v1

    iget-object v1, v0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    move-object/from16 v41, v1

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 1964
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    iget v1, v0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 1965
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    .line 1966
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    iget-object v1, v0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    move-object/from16 v45, v1

    iget-boolean v1, v0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    .line 1968
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v46

    iget-object v1, v0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    move-object/from16 v47, v40

    move-object/from16 v40, v2

    move-object/from16 v2, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v47

    move-object/from16 v47, v1

    filled-new-array/range {v2 .. v47}, [Ljava/lang/Object;

    move-result-object v1

    .line 1924
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public greylist-max-o is24GHz()Z
    .registers 2

    .line 1153
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public greylist is5GHz()Z
    .registers 2

    .line 1162
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is6GHz()Z
    .registers 2

    .line 1170
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    return v0
.end method

.method public whitelist isApTidToLinkMappingNegotiationSupported()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2132
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    return v0
.end method

.method public whitelist isCarrierMerged()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1325
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1328
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    return v0

    .line 1326
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isEphemeral()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1239
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    return v0
.end method

.method public whitelist isOemPaid()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1285
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1288
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    return v0

    .line 1286
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isOemPrivate()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1304
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1307
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    return v0

    .line 1305
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isOsuAp()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1340
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    return v0
.end method

.method public whitelist isPasspointAp()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1346
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist isPrimary()Z
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1828
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1833
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 1836
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 1834
    :cond_13
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not allowed to access this field"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1831
    :cond_1b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isRestricted()Z
    .registers 2

    .line 1269
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    return v0
.end method

.method public whitelist isTrusted()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1254
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    return v0
.end method

.method public blacklist isUsable()Z
    .registers 2

    .line 457
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    return v0
.end method

.method public bridge synthetic blacklist makeCopy(J)Landroid/net/TransportInfo;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiInfo;->makeCopy(J)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    return-object p1
.end method

.method public whitelist makeCopy(J)Landroid/net/wifi/WifiInfo;
    .registers 4
    .param p1, "redactions"    # J

    .line 1982
    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;J)V

    return-object v0
.end method

.method public greylist-max-o reset()V
    .registers 6

    .line 523
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 524
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Landroid/net/wifi/WifiSsid;)V

    .line 526
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setHiddenSSID(Z)V

    .line 527
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 528
    const/16 v3, -0x7f

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 529
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 530
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setTxLinkSpeedMbps(I)V

    .line 531
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setRxLinkSpeedMbps(I)V

    .line 532
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setMaxSupportedTxLinkSpeedMbps(I)V

    .line 533
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setMaxSupportedRxLinkSpeedMbps(I)V

    .line 534
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 535
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setMeteredHint(Z)V

    .line 536
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setEphemeral(Z)V

    .line 537
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setTrusted(Z)V

    .line 538
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setOemPaid(Z)V

    .line 539
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setOemPrivate(Z)V

    .line 540
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setCarrierMerged(Z)V

    .line 541
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setOsuAp(Z)V

    .line 542
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setRequestingPackageName(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setFQDN(Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setProviderFriendlyName(Ljava/lang/String;)V

    .line 545
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setPasspointUniqueId(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiInfo;->setSubscriptionId(I)V

    .line 547
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setInformationElements(Ljava/util/List;)V

    .line 548
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setIsPrimary(Z)V

    .line 549
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->setRestricted(Z)V

    .line 550
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    .line 551
    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    .line 552
    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    .line 553
    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    .line 554
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 555
    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 556
    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 557
    iput-wide v3, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 558
    iput v1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 559
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 560
    iput v2, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 561
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    .line 562
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->resetMultiLinkInfo()V

    .line 563
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiInfo;->enableApTidToLinkMappingNegotiationSupport(Z)V

    .line 564
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    .line 565
    return-void
.end method

.method public blacklist resetMultiLinkInfo()V
    .registers 2

    .line 569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiInfo;->setApMldMacAddress(Landroid/net/MacAddress;)V

    .line 570
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    .line 571
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 572
    return-void
.end method

.method public blacklist setAffiliatedMloLinks(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;)V"
        }
    .end annotation

    .line 850
    .local p1, "links":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/MloLink;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 851
    invoke-direct {p0}, Landroid/net/wifi/WifiInfo;->mapAffiliatedMloLinks()V

    .line 852
    return-void
.end method

.method public blacklist setApMldMacAddress(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "address"    # Landroid/net/MacAddress;

    .line 825
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 826
    return-void
.end method

.method public blacklist setApMloLinkId(I)V
    .registers 2
    .param p1, "linkId"    # I

    .line 833
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    .line 834
    return-void
.end method

.method public greylist setBSSID(Ljava/lang/String;)V
    .registers 2
    .param p1, "BSSID"    # Ljava/lang/String;

    .line 817
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 818
    return-void
.end method

.method public blacklist setCarrierMerged(Z)V
    .registers 2
    .param p1, "carrierMerged"    # Z

    .line 1314
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    .line 1315
    return-void
.end method

.method public blacklist setCurrentSecurityType(I)V
    .registers 3
    .param p1, "securityType"    # I

    .line 2003
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->convertWifiConfigurationSecurityType(I)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    .line 2004
    return-void
.end method

.method public greylist-max-o setEphemeral(Z)V
    .registers 2
    .param p1, "ephemeral"    # Z

    .line 1226
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    .line 1227
    return-void
.end method

.method public blacklist setFQDN(Ljava/lang/String;)V
    .registers 2
    .param p1, "fqdn"    # Ljava/lang/String;

    .line 1351
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    .line 1352
    return-void
.end method

.method public greylist-max-o setFrequency(I)V
    .registers 2
    .param p1, "frequency"    # I

    .line 1145
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 1146
    return-void
.end method

.method public blacklist setHiddenSSID(Z)V
    .registers 2
    .param p1, "isHiddenSsid"    # Z

    .line 1490
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mIsHiddenSsid:Z

    .line 1491
    return-void
.end method

.method public greylist-max-o setInetAddress(Ljava/net/InetAddress;)V
    .registers 2
    .param p1, "address"    # Ljava/net/InetAddress;

    .line 1459
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 1460
    return-void
.end method

.method public blacklist setInformationElements(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;)V"
        }
    .end annotation

    .line 1779
    .local p1, "infoElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    if-nez p1, :cond_6

    .line 1780
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    .line 1781
    return-void

    .line 1783
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    .line 1784
    return-void
.end method

.method public blacklist setIsPrimary(Z)V
    .registers 2
    .param p1, "isPrimary"    # Z

    .line 1807
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    .line 1808
    return-void
.end method

.method public greylist setLinkSpeed(I)V
    .registers 2
    .param p1, "linkSpeed"    # I

    .line 1054
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 1055
    return-void
.end method

.method public blacklist setLostTxPacketsPerSecond(D)V
    .registers 3
    .param p1, "lostTxPacketsPerSecond"    # D

    .line 372
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    .line 373
    return-void
.end method

.method public greylist setMacAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "macAddress"    # Ljava/lang/String;

    .line 1180
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 1181
    return-void
.end method

.method public blacklist setMaxSupportedRxLinkSpeedMbps(I)V
    .registers 2
    .param p1, "maxSupportedRxLinkSpeed"    # I

    .line 1129
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1130
    return-void
.end method

.method public blacklist setMaxSupportedTxLinkSpeedMbps(I)V
    .registers 2
    .param p1, "maxSupportedTxLinkSpeed"    # I

    .line 1092
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1093
    return-void
.end method

.method public greylist-max-o setMeteredHint(Z)V
    .registers 2
    .param p1, "meteredHint"    # Z

    .line 1214
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 1215
    return-void
.end method

.method public greylist setNetworkId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 1425
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 1426
    return-void
.end method

.method public blacklist setNetworkKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "currentNetworkKey"    # Ljava/lang/String;

    .line 2104
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    .line 2105
    return-void
.end method

.method public blacklist setOemPaid(Z)V
    .registers 2
    .param p1, "oemPaid"    # Z

    .line 1274
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    .line 1275
    return-void
.end method

.method public blacklist setOemPrivate(Z)V
    .registers 2
    .param p1, "oemPrivate"    # Z

    .line 1293
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    .line 1294
    return-void
.end method

.method public blacklist setOsuAp(Z)V
    .registers 2
    .param p1, "osuAp"    # Z

    .line 1334
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    .line 1335
    return-void
.end method

.method public blacklist setPasspointUniqueId(Ljava/lang/String;)V
    .registers 2
    .param p1, "passpointUniqueId"    # Ljava/lang/String;

    .line 1761
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    .line 1762
    return-void
.end method

.method public blacklist setProviderFriendlyName(Ljava/lang/String;)V
    .registers 2
    .param p1, "providerFriendlyName"    # Ljava/lang/String;

    .line 1368
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    .line 1369
    return-void
.end method

.method public blacklist setRequestingPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1386
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    .line 1387
    return-void
.end method

.method public blacklist setRestricted(Z)V
    .registers 2
    .param p1, "restricted"    # Z

    .line 1259
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    .line 1260
    return-void
.end method

.method public blacklist setRetriedTxPacketsRate(D)V
    .registers 3
    .param p1, "txRetriedTxPacketsPerSecond"    # D

    .line 391
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    .line 392
    return-void
.end method

.method public greylist setRssi(I)V
    .registers 4
    .param p1, "rssi"    # I

    .line 1008
    const/16 v0, -0x7f

    if-ge p1, v0, :cond_6

    .line 1009
    const/16 p1, -0x7f

    .line 1010
    :cond_6
    const/16 v0, 0xc8

    if-le p1, v0, :cond_c

    .line 1011
    const/16 p1, 0xc8

    .line 1012
    :cond_c
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 1013
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLastRssiUpdateMillis:J

    .line 1014
    return-void
.end method

.method public blacklist setRxLinkSpeedMbps(I)V
    .registers 2
    .param p1, "rxLinkSpeed"    # I

    .line 1121
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    .line 1122
    return-void
.end method

.method public greylist-max-o setSSID(Landroid/net/wifi/WifiSsid;)V
    .registers 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .line 779
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 780
    return-void
.end method

.method public blacklist setScore(I)V
    .registers 2
    .param p1, "score"    # I

    .line 449
    iput p1, p0, Landroid/net/wifi/WifiInfo;->score:I

    .line 450
    return-void
.end method

.method public blacklist setSubscriptionId(I)V
    .registers 2
    .param p1, "subId"    # I

    .line 1402
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    .line 1403
    return-void
.end method

.method public blacklist setSuccessfulRxPacketsPerSecond(D)V
    .registers 3
    .param p1, "successfulRxPacketsPerSecond"    # D

    .line 429
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    .line 430
    return-void
.end method

.method public blacklist setSuccessfulTxPacketsPerSecond(D)V
    .registers 3
    .param p1, "successfulTxPacketsPerSecond"    # D

    .line 410
    iput-wide p1, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    .line 411
    return-void
.end method

.method public greylist setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .registers 2
    .param p1, "state"    # Landroid/net/wifi/SupplicantState;

    .line 1454
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 1455
    return-void
.end method

.method greylist setSupplicantState(Ljava/lang/String;)V
    .registers 3
    .param p1, "stateName"    # Ljava/lang/String;

    .line 1510
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 1511
    return-void
.end method

.method public blacklist setTrusted(Z)V
    .registers 2
    .param p1, "trusted"    # Z

    .line 1244
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    .line 1245
    return-void
.end method

.method public blacklist setTxLinkSpeedMbps(I)V
    .registers 2
    .param p1, "txLinkSpeed"    # I

    .line 1084
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    .line 1085
    return-void
.end method

.method public blacklist setUsable(Z)V
    .registers 2
    .param p1, "isUsable"    # Z

    .line 466
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    .line 467
    return-void
.end method

.method public whitelist setVendorData(Ljava/util/List;)V
    .registers 4
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

    .line 2169
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 2172
    if-eqz p1, :cond_10

    .line 2175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    .line 2176
    return-void

    .line 2173
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2170
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist setWifiStandard(I)V
    .registers 2
    .param p1, "wifiStandard"    # I

    .line 1028
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    .line 1029
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 1551
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1552
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<none>"

    .line 1554
    .local v1, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1555
    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v3, :cond_21

    move-object v3, v1

    goto :goto_23

    :cond_21
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    :goto_23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1556
    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v3, :cond_33

    move-object v3, v1

    goto :goto_35

    :cond_33
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    :goto_35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1557
    const-string v3, ", IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1558
    const-string v3, ", Security type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1559
    const-string v3, ", Supplicant state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1560
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_5d

    move-object v3, v1

    goto :goto_5f

    :cond_5d
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    :goto_5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1561
    const-string v3, ", Wi-Fi standard: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    invoke-static {v3}, Landroid/net/wifi/ScanResult;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1562
    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1563
    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "Mbps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1564
    const-string v4, ", Tx Link speed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1565
    const-string v4, ", Max Supported Tx Link speed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    .line 1566
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1567
    const-string v4, ", Rx Link speed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1568
    const-string v4, ", Max Supported Rx Link speed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v4, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    .line 1569
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1570
    const-string v3, ", Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "MHz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1571
    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1572
    const-string v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1573
    const-string v3, ", score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1574
    const-string v3, ", isUsable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1575
    const-string v3, ", CarrierMerged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1576
    const-string v3, ", SubscriptionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1577
    const-string v3, ", IsPrimary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1578
    const-string v3, ", Trusted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1579
    const-string v3, ", Restricted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1580
    const-string v3, ", Ephemeral: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1581
    const-string v3, ", OEM paid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1582
    const-string v3, ", OEM private: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1583
    const-string v3, ", OSU AP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1584
    const-string v3, ", FQDN: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    if-nez v3, :cond_18f

    move-object v3, v1

    goto :goto_191

    :cond_18f
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    :goto_191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1585
    const-string v3, ", Provider friendly name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1586
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    if-nez v3, :cond_1a1

    move-object v3, v1

    goto :goto_1a3

    :cond_1a1
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    :goto_1a3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1587
    const-string v3, ", Requesting package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1588
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    if-nez v3, :cond_1b3

    move-object v3, v1

    goto :goto_1b5

    :cond_1b3
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    :goto_1b5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1589
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    if-nez v3, :cond_1bf

    move-object v3, v1

    goto :goto_1c1

    :cond_1bf
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    :goto_1c1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1590
    const-string v3, "MLO Information: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1591
    const-string v3, ", Is TID-To-Link negotiation supported by the AP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    .line 1592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1593
    const-string v3, ", AP MLD Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1594
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    if-nez v3, :cond_1e3

    move-object v3, v1

    goto :goto_1e9

    :cond_1e3
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1593
    :goto_1e9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1595
    const-string v3, ", AP MLO Link Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1596
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    if-nez v3, :cond_1f9

    move-object v3, v1

    goto :goto_1ff

    :cond_1f9
    iget v3, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1595
    :goto_1ff
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1597
    const-string v3, ", AP MLO Affiliated links: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1598
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    if-nez v3, :cond_20f

    move-object v3, v1

    goto :goto_211

    :cond_20f
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    .line 1597
    :goto_211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1599
    const-string v3, ", Vendor Data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1600
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    if-eqz v3, :cond_22b

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_228

    goto :goto_22b

    :cond_228
    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    goto :goto_22c

    :cond_22b
    :goto_22b
    move-object v3, v1

    .line 1599
    :goto_22c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1602
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public blacklist updateMloLinkStaAddress(ILandroid/net/MacAddress;)Z
    .registers 6
    .param p1, "linkId"    # I
    .param p2, "macAddress"    # Landroid/net/MacAddress;

    .line 865
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/MloLink;

    .line 866
    .local v1, "link":Landroid/net/wifi/MloLink;
    invoke-virtual {v1}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v2

    if-ne v2, p1, :cond_1d

    .line 867
    invoke-virtual {v1, p2}, Landroid/net/wifi/MloLink;->setStaMacAddress(Landroid/net/MacAddress;)V

    .line 868
    const/4 v0, 0x1

    return v0

    .line 870
    .end local v1    # "link":Landroid/net/wifi/MloLink;
    :cond_1d
    goto :goto_6

    .line 871
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateMloLinkState(II)Z
    .registers 7
    .param p1, "linkId"    # I
    .param p2, "state"    # I

    .line 885
    invoke-static {p2}, Landroid/net/wifi/MloLink;->isValidState(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 886
    return v1

    .line 889
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/MloLink;

    .line 890
    .local v2, "link":Landroid/net/wifi/MloLink;
    invoke-virtual {v2}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v3

    if-ne v3, p1, :cond_25

    .line 891
    invoke-virtual {v2, p2}, Landroid/net/wifi/MloLink;->setState(I)V

    .line 892
    const/4 v0, 0x1

    return v0

    .line 894
    .end local v2    # "link":Landroid/net/wifi/MloLink;
    :cond_25
    goto :goto_e

    .line 895
    :cond_26
    return v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1624
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1625
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1627
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mTxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1628
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1629
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1630
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_31

    .line 1631
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1632
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_34

    .line 1634
    :cond_31
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1636
    :goto_34
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v0, :cond_41

    .line 1637
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1638
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_44

    .line 1640
    :cond_41
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    :goto_44
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1643
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1644
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1645
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mEphemeral:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1646
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mTrusted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1647
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPaid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOemPrivate:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mCarrierMerged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget v0, p0, Landroid/net/wifi/WifiInfo;->score:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1651
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mIsUsable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1652
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1653
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1654
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txRetries:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1655
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mTxRetriedTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1656
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->txBad:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1657
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mLostTxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1658
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->rxSuccess:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1659
    iget-wide v0, p0, Landroid/net/wifi/WifiInfo;->mSuccessfulRxPacketsPerSecond:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1660
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1661
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mOsuAp:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1662
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mRequestingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mProviderFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1665
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mWifiStandard:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedTxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mMaxSupportedRxLinkSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mPasspointUniqueId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1669
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mSubscriptionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mInformationElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1671
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1672
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mIsPrimary:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1674
    :cond_e0
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mSecurityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1675
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1677
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mApMldMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1678
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mApMloLinkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1679
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1680
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mApTidToLinkMappingNegotiationSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1681
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1682
    return-void
.end method
