.class public final Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$InformationElement;,
        Landroid/net/wifi/ScanResult$Builder;,
        Landroid/net/wifi/ScanResult$RadioChainInfo;,
        Landroid/net/wifi/ScanResult$WifiBand;
    }
.end annotation


# static fields
.field public static final blacklist BAND_24_GHZ_END_FREQ_MHZ:I = 0x9b4

.field public static final blacklist BAND_24_GHZ_FIRST_CH_NUM:I = 0x1

.field public static final blacklist BAND_24_GHZ_LAST_CH_NUM:I = 0xe

.field public static final blacklist BAND_24_GHZ_START_FREQ_MHZ:I = 0x96c

.field public static final blacklist BAND_5_GHZ_END_FREQ_MHZ:I = 0x16fd

.field public static final blacklist BAND_5_GHZ_FIRST_CH_NUM:I = 0x20

.field public static final blacklist BAND_5_GHZ_HIGH_LOWEST_FREQ_MHZ:I = 0x157c

.field public static final blacklist BAND_5_GHZ_LAST_CH_NUM:I = 0xb1

.field public static final blacklist BAND_5_GHZ_LOW_HIGHEST_FREQ_MHZ:I = 0x14c8

.field public static final blacklist BAND_5_GHZ_START_FREQ_MHZ:I = 0x1428

.field public static final blacklist BAND_60_GHZ_END_FREQ_MHZ:I = 0x11238

.field public static final blacklist BAND_60_GHZ_FIRST_CH_NUM:I = 0x1

.field public static final blacklist BAND_60_GHZ_LAST_CH_NUM:I = 0x6

.field public static final blacklist BAND_60_GHZ_START_FREQ_MHZ:I = 0xe3d0

.field public static final blacklist BAND_6_GHZ_END_FREQ_MHZ:I = 0x1bcb

.field public static final blacklist BAND_6_GHZ_FIRST_CH_NUM:I = 0x1

.field public static final blacklist BAND_6_GHZ_LAST_CH_NUM:I = 0xe9

.field public static final blacklist BAND_6_GHZ_OP_CLASS_136_CH_2_FREQ_MHZ:I = 0x172f

.field public static final blacklist BAND_6_GHZ_PSC_START_MHZ:I = 0x1757

.field public static final blacklist BAND_6_GHZ_PSC_STEP_SIZE_MHZ:I = 0x50

.field public static final blacklist BAND_6_GHZ_START_FREQ_MHZ:I = 0x1743

.field public static final whitelist CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final whitelist CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final whitelist CHANNEL_WIDTH_320MHZ:I = 0x5

.field public static final whitelist CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final whitelist CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final whitelist CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final whitelist CIPHER_BIP_CMAC_256:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_BIP_GMAC_128:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_BIP_GMAC_256:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_CCMP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist CIPHER_CCMP_256:I = 0xa

.field public static final whitelist CIPHER_GCMP_128:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_GCMP_256:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_NO_GROUP_ADDRESSED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_SMS4:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CIPHER_TKIP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist FLAG_80211az_NTB_RESPONDER:J = 0x4L

.field public static final greylist-max-o FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final greylist-max-o FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final blacklist FLAG_RANGING_FRAME_PROTECTION_REQUIRED:J = 0x20L

.field public static final blacklist FLAG_SECURE_HE_LTF_SUPPORTED:J = 0x10L

.field public static final blacklist FLAG_TWT_RESPONDER:J = 0x8L

.field public static final blacklist KEY_MGMT_DPP:I = 0x11

.field public static final whitelist KEY_MGMT_EAP:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_MGMT_EAP_FT_SHA384:I = 0x15

.field public static final whitelist KEY_MGMT_EAP_SHA256:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_EAP_SUITE_B_192:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_MGMT_FILS_SHA256:I = 0xf

.field public static final blacklist KEY_MGMT_FILS_SHA384:I = 0x10

.field public static final whitelist KEY_MGMT_FT_EAP:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_FT_PSK:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_MGMT_FT_PSK_SHA384:I = 0x16

.field public static final whitelist KEY_MGMT_FT_SAE:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_MGMT_FT_SAE_EXT_KEY:I = 0x13

.field public static final whitelist KEY_MGMT_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_OSEN:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_OWE:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_OWE_TRANSITION:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_MGMT_PASN:I = 0x14

.field public static final whitelist KEY_MGMT_PSK:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_PSK_SHA256:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_SAE:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist KEY_MGMT_SAE_EXT_KEY:I = 0x12

.field public static final blacklist KEY_MGMT_UNKNOWN:I = 0x17

.field public static final whitelist KEY_MGMT_WAPI_CERT:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist KEY_MGMT_WAPI_PSK:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREAMBLE_EHT:I = 0x4

.field public static final whitelist PREAMBLE_HE:I = 0x3

.field public static final whitelist PREAMBLE_HT:I = 0x1

.field public static final whitelist PREAMBLE_LEGACY:I = 0x0

.field public static final whitelist PREAMBLE_VHT:I = 0x2

.field public static final whitelist PROTOCOL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_OSEN:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_RSN:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_WAPI:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PROTOCOL_WPA:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ScanResult"

.field public static final whitelist UNSPECIFIED:I = -0x1

.field public static final whitelist WIFI_BAND_24_GHZ:I = 0x1

.field public static final whitelist WIFI_BAND_5_GHZ:I = 0x2

.field public static final blacklist WIFI_BAND_5_GHZ_HIGH:I = 0x40000000

.field public static final blacklist WIFI_BAND_5_GHZ_LOW:I = 0x20000000

.field public static final whitelist WIFI_BAND_60_GHZ:I = 0x10

.field public static final whitelist WIFI_BAND_6_GHZ:I = 0x8

.field public static final whitelist WIFI_STANDARD_11AC:I = 0x5

.field public static final whitelist WIFI_STANDARD_11AD:I = 0x7

.field public static final whitelist WIFI_STANDARD_11AX:I = 0x6

.field public static final whitelist WIFI_STANDARD_11BE:I = 0x8

.field public static final whitelist WIFI_STANDARD_11N:I = 0x4

.field public static final whitelist WIFI_STANDARD_LEGACY:I = 0x1

.field public static final whitelist WIFI_STANDARD_UNKNOWN:I


# instance fields
.field public whitelist BSSID:Ljava/lang/String;

.field public whitelist SSID:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist anqpDomainId:I

.field public greylist-max-o anqpElements:[Landroid/net/wifi/AnqpInformationElement;

.field public greylist anqpLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public whitelist capabilities:Ljava/lang/String;

.field public whitelist centerFreq0:I

.field public whitelist centerFreq1:I

.field public whitelist channelWidth:I

.field public greylist distanceCm:I

.field public greylist distanceSdCm:I

.field public greylist flags:J

.field public whitelist frequency:I

.field public greylist hessid:J

.field public blacklist ifaceName:Ljava/lang/String;

.field public greylist informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

.field public greylist-max-r is80211McRTTResponder:Z

.field public whitelist level:I

.field private blacklist mAffiliatedMloLinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/MloLink;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mApMldMacAddress:Landroid/net/MacAddress;

.field private blacklist mApMloLinkId:I

.field private blacklist mWifiStandard:I

.field public greylist numUsage:I

.field public whitelist operatorFriendlyName:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist-max-o radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

.field public greylist seen:J

.field public whitelist timestamp:J

.field public greylist untrusted:Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public whitelist venueName:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public greylist wifiSsid:Landroid/net/wifi/WifiSsid;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmAffiliatedMloLinks(Landroid/net/wifi/ScanResult;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApMldMacAddress(Landroid/net/wifi/ScanResult;Landroid/net/MacAddress;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmApMloLinkId(Landroid/net/wifi/ScanResult;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmWifiStandard(Landroid/net/wifi/ScanResult;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 2032
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 1888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1889
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/ScanResult$Builder;)V
    .registers 9
    .param p1, "builder"    # Landroid/net/wifi/ScanResult$Builder;

    .line 1705
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1706
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmWifiSsid(Landroid/net/wifi/ScanResult$Builder;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1707
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-direct {p0, v1}, Landroid/net/wifi/ScanResult;->isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1709
    const-string v1, ""

    iput-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_3e

    .line 1711
    :cond_27
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_33

    :cond_32
    move-object v1, v2

    .line 1712
    .local v1, "utf8Ssid":Ljava/lang/CharSequence;
    :goto_33
    if-eqz v1, :cond_3a

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3c

    :cond_3a
    const-string v3, "<unknown ssid>"

    :goto_3c
    iput-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1714
    .end local v1    # "utf8Ssid":Ljava/lang/CharSequence;
    :goto_3e
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmBssid(Landroid/net/wifi/ScanResult$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1715
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmHessid(Landroid/net/wifi/ScanResult$Builder;)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 1716
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmAnqpDomainId(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 1717
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmOsuProviders(Landroid/net/wifi/ScanResult$Builder;)[B

    move-result-object v1

    if-eqz v1, :cond_6d

    .line 1718
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v1, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 1719
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v3, Landroid/net/wifi/AnqpInformationElement;

    const/16 v4, 0x8

    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmOsuProviders(Landroid/net/wifi/ScanResult$Builder;)[B

    move-result-object v5

    const v6, 0x506f9a

    invoke-direct {v3, v6, v4, v5}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v3, v1, v0

    .line 1723
    :cond_6d
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmCaps(Landroid/net/wifi/ScanResult$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1724
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmRssi(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 1725
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmFrequency(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1726
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmTsf(Landroid/net/wifi/ScanResult$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1727
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmDistanceCm(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 1728
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmDistanceSdCm(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 1729
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmChannelWidth(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1730
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmCenterFreq0(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1731
    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmCenterFreq1(Landroid/net/wifi/ScanResult$Builder;)I

    move-result v0

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1733
    iget-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmIs80211McRTTResponder(Landroid/net/wifi/ScanResult$Builder;)Z

    move-result v5

    if-eqz v5, :cond_b2

    const-wide/16 v5, 0x2

    goto :goto_b3

    :cond_b2
    move-wide v5, v0

    :goto_b3
    or-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1734
    iget-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmIs80211azNtbRTTResponder(Landroid/net/wifi/ScanResult$Builder;)Z

    move-result v5

    if-eqz v5, :cond_c1

    const-wide/16 v5, 0x4

    goto :goto_c2

    :cond_c1
    move-wide v5, v0

    :goto_c2
    or-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1735
    iget-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmIsTwtResponder(Landroid/net/wifi/ScanResult$Builder;)Z

    move-result v5

    if-eqz v5, :cond_d0

    const-wide/16 v5, 0x8

    goto :goto_d1

    :cond_d0
    move-wide v5, v0

    :goto_d1
    or-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1736
    iput-object v2, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 1737
    iput-object v2, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1738
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmIsSecureHeLtfSupported(Landroid/net/wifi/ScanResult$Builder;)Z

    move-result v4

    if-eqz v4, :cond_e3

    const-wide/16 v4, 0x10

    goto :goto_e4

    :cond_e3
    move-wide v4, v0

    :goto_e4
    or-long/2addr v2, v4

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1739
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-static {p1}, Landroid/net/wifi/ScanResult$Builder;->-$$Nest$fgetmIsRangingFrameProtectionRequired(Landroid/net/wifi/ScanResult$Builder;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 1740
    const-wide/16 v0, 0x20

    goto :goto_f3

    :cond_f2
    nop

    :goto_f3
    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1741
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/ScanResult$Builder;Landroid/net/wifi/ScanResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/ScanResult$Builder;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/ScanResult;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .line 1853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1854
    if-eqz p1, :cond_8f

    .line 1855
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1856
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1857
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1858
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->hessid:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 1859
    iget v0, p1, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 1860
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    .line 1861
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 1862
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1863
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 1864
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1865
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1866
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1867
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1868
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1869
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 1870
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 1871
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 1872
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 1873
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 1874
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 1875
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 1876
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1877
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 1878
    iget v0, p1, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1879
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    .line 1880
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1881
    iget v0, p1, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 1882
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    if-eqz v0, :cond_89

    .line 1883
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_8d

    :cond_89
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_8d
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 1885
    :cond_8f
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;JI[BLjava/lang/String;IIJ)V
    .registers 28
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "osuProviders"    # [B
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J

    .line 1748
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v3, -0x1

    iput v3, v0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 597
    const/4 v4, 0x0

    iput v4, v0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1749
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1750
    const/4 v5, 0x0

    if-eqz v1, :cond_25

    invoke-direct/range {p0 .. p1}, Landroid/net/wifi/ScanResult;->isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 1752
    const-string v6, ""

    iput-object v6, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_38

    .line 1754
    :cond_25
    if-eqz v1, :cond_2c

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_2d

    :cond_2c
    move-object v6, v5

    .line 1755
    .local v6, "utf8Ssid":Ljava/lang/CharSequence;
    :goto_2d
    if-eqz v6, :cond_34

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_36

    :cond_34
    const-string v7, "<unknown ssid>"

    :goto_36
    iput-object v7, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1757
    .end local v6    # "utf8Ssid":Ljava/lang/CharSequence;
    :goto_38
    move-object/from16 v6, p2

    iput-object v6, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1758
    move-wide/from16 v7, p3

    iput-wide v7, v0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 1759
    move/from16 v9, p5

    iput v9, v0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 1760
    if-eqz v2, :cond_59

    .line 1761
    const/4 v10, 0x1

    new-array v10, v10, [Landroid/net/wifi/AnqpInformationElement;

    iput-object v10, v0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    .line 1762
    iget-object v10, v0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    new-instance v11, Landroid/net/wifi/AnqpInformationElement;

    const v12, 0x506f9a

    const/16 v13, 0x8

    invoke-direct {v11, v12, v13, v2}, Landroid/net/wifi/AnqpInformationElement;-><init>(II[B)V

    aput-object v11, v10, v4

    .line 1766
    :cond_59
    move-object/from16 v4, p7

    iput-object v4, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1767
    move/from16 v10, p8

    iput v10, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 1768
    move/from16 v11, p9

    iput v11, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1769
    move-wide/from16 v12, p10

    iput-wide v12, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1770
    iput v3, v0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 1771
    iput v3, v0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 1772
    iput v3, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1773
    iput v3, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1774
    iput v3, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1775
    const-wide/16 v14, 0x0

    iput-wide v14, v0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1776
    iput-object v5, v0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 1777
    iput-object v5, v0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1778
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .registers 14
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .line 1785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 597
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1786
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1787
    const/4 v1, 0x0

    if-eqz p1, :cond_1f

    invoke-direct {p0, p1}, Landroid/net/wifi/ScanResult;->isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1789
    const-string v2, ""

    iput-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_32

    .line 1791
    :cond_1f
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_27

    :cond_26
    move-object v2, v1

    .line 1792
    .local v2, "utf8Ssid":Ljava/lang/CharSequence;
    :goto_27
    if-eqz v2, :cond_2e

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_30

    :cond_2e
    const-string v3, "<unknown ssid>"

    :goto_30
    iput-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1794
    .end local v2    # "utf8Ssid":Ljava/lang/CharSequence;
    :goto_32
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1795
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1796
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 1797
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1798
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1799
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 1800
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 1801
    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1802
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1803
    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1804
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1805
    iput-object v1, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 1806
    iput-object v1, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1807
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .registers 35
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "hessid"    # J
    .param p6, "anqpDomainId"    # I
    .param p7, "caps"    # Ljava/lang/String;
    .param p8, "level"    # I
    .param p9, "frequency"    # I
    .param p10, "tsf"    # J
    .param p12, "distCm"    # I
    .param p13, "distSdCm"    # I
    .param p14, "channelWidth"    # I
    .param p15, "centerFreq0"    # I
    .param p16, "centerFreq1"    # I
    .param p17, "is80211McRTTResponder"    # Z

    .line 1847
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move-wide/from16 v9, p10

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move/from16 v14, p15

    move/from16 v15, p16

    move/from16 v16, p17

    invoke-direct/range {v0 .. v16}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    .line 1849
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 1850
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V
    .registers 33
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "hessid"    # J
    .param p5, "anqpDomainId"    # I
    .param p6, "caps"    # Ljava/lang/String;
    .param p7, "level"    # I
    .param p8, "frequency"    # I
    .param p9, "tsf"    # J
    .param p11, "distCm"    # I
    .param p12, "distSdCm"    # I
    .param p13, "channelWidth"    # I
    .param p14, "centerFreq0"    # I
    .param p15, "centerFreq1"    # I
    .param p16, "is80211McRTTResponder"    # Z

    .line 1816
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 129
    const/4 v1, -0x1

    iput v1, v0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 158
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 597
    const/4 v1, 0x0

    iput v1, v0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 1817
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1818
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1819
    move-wide/from16 v3, p3

    iput-wide v3, v0, Landroid/net/wifi/ScanResult;->hessid:J

    .line 1820
    move/from16 v5, p5

    iput v5, v0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    .line 1821
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 1822
    move/from16 v7, p7

    iput v7, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 1823
    move/from16 v8, p8

    iput v8, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1824
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1825
    move/from16 v11, p11

    iput v11, v0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 1826
    move/from16 v12, p12

    iput v12, v0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 1827
    move/from16 v13, p13

    iput v13, v0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 1828
    move/from16 v14, p14

    iput v14, v0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 1829
    move/from16 v15, p15

    iput v15, v0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 1830
    if-eqz p16, :cond_4c

    .line 1831
    const-wide/16 v1, 0x2

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    goto :goto_50

    .line 1833
    :cond_4c
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/net/wifi/ScanResult;->flags:J

    .line 1835
    :goto_50
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 1836
    iput-object v1, v0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1837
    return-void
.end method

.method public static whitelist convertChannelToFrequencyMhzIfSupported(II)I
    .registers 6
    .param p0, "channel"    # I
    .param p1, "band"    # I

    .line 1091
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    .line 1093
    const/16 v2, 0xe

    if-ne p0, v2, :cond_b

    .line 1094
    const/16 v0, 0x9b4

    return v0

    .line 1095
    :cond_b
    if-lt p0, v1, :cond_16

    if-gt p0, v2, :cond_16

    .line 1096
    add-int/lit8 v0, p0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x96c

    return v0

    .line 1098
    :cond_16
    return v0

    .line 1101
    :cond_17
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2a

    .line 1102
    const/16 v1, 0x20

    if-lt p0, v1, :cond_29

    const/16 v1, 0xb1

    if-gt p0, v1, :cond_29

    .line 1103
    add-int/lit8 v0, p0, -0x20

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x1428

    return v0

    .line 1105
    :cond_29
    return v0

    .line 1108
    :cond_2a
    const/16 v3, 0x8

    if-ne p1, v3, :cond_41

    .line 1109
    if-lt p0, v1, :cond_40

    const/16 v1, 0xe9

    if-gt p0, v1, :cond_40

    .line 1110
    if-ne p0, v2, :cond_39

    .line 1111
    const/16 v0, 0x172f

    return v0

    .line 1113
    :cond_39
    add-int/lit8 v0, p0, -0x1

    mul-int/lit8 v0, v0, 0x5

    add-int/lit16 v0, v0, 0x1743

    return v0

    .line 1115
    :cond_40
    return v0

    .line 1118
    :cond_41
    const/16 v2, 0x10

    if-ne p1, v2, :cond_54

    .line 1119
    if-lt p0, v1, :cond_53

    const/4 v1, 0x6

    if-gt p0, v1, :cond_53

    .line 1120
    add-int/lit8 v0, p0, -0x1

    mul-int/lit16 v0, v0, 0x870

    const v1, 0xe3d0

    add-int/2addr v0, v1

    return v0

    .line 1122
    :cond_53
    return v0

    .line 1125
    :cond_54
    return v0
.end method

.method public static whitelist convertFrequencyMhzToChannelIfSupported(I)I
    .registers 2
    .param p0, "freqMhz"    # I

    .line 1171
    const/16 v0, 0x9b4

    if-ne p0, v0, :cond_7

    .line 1172
    const/16 v0, 0xe

    return v0

    .line 1173
    :cond_7
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1174
    add-int/lit16 v0, p0, -0x96c

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1175
    :cond_14
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1176
    add-int/lit16 v0, p0, -0x1428

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x20

    return v0

    .line 1177
    :cond_21
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 1178
    const/16 v0, 0x172f

    if-ne p0, v0, :cond_2d

    .line 1179
    const/4 v0, 0x2

    return v0

    .line 1181
    :cond_2d
    add-int/lit16 v0, p0, -0x1743

    div-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1182
    :cond_34
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1183
    const v0, 0xe3d0

    sub-int v0, p0, v0

    div-int/lit16 v0, v0, 0x870

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 1186
    :cond_44
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist getBandFromOpClass(II)I
    .registers 4
    .param p0, "opClass"    # I
    .param p1, "channel"    # I

    .line 1143
    const/16 v0, 0x51

    const/4 v1, 0x1

    if-lt p0, v0, :cond_10

    const/16 v0, 0x54

    if-gt p0, v0, :cond_10

    .line 1144
    if-lt p1, v1, :cond_33

    const/16 v0, 0xe

    if-gt p1, v0, :cond_33

    .line 1145
    return v1

    .line 1147
    :cond_10
    const/16 v0, 0x73

    if-lt p0, v0, :cond_22

    const/16 v0, 0x82

    if-gt p0, v0, :cond_22

    .line 1148
    const/16 v0, 0x20

    if-lt p1, v0, :cond_33

    const/16 v0, 0xb1

    if-gt p1, v0, :cond_33

    .line 1149
    const/4 v0, 0x2

    return v0

    .line 1151
    :cond_22
    const/16 v0, 0x83

    if-lt p0, v0, :cond_33

    const/16 v0, 0x89

    if-gt p0, v0, :cond_33

    .line 1152
    if-lt p1, v1, :cond_33

    const/16 v0, 0xe9

    if-gt p1, v0, :cond_33

    .line 1153
    const/16 v0, 0x8

    return v0

    .line 1158
    :cond_33
    const/4 v0, 0x0

    return v0
.end method

.method public static greylist-max-o is24GHz(I)Z
    .registers 2
    .param p0, "freqMhz"    # I

    .line 992
    const/16 v0, 0x96c

    if-lt p0, v0, :cond_a

    const/16 v0, 0x9b4

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static greylist-max-o is5GHz(I)Z
    .registers 2
    .param p0, "freqMhz"    # I

    .line 1004
    const/16 v0, 0x1428

    if-lt p0, v0, :cond_a

    const/16 v0, 0x16fd

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist is60GHz(I)Z
    .registers 2
    .param p0, "freqMhz"    # I

    .line 1044
    const v0, 0xe3d0

    if-lt p0, v0, :cond_c

    const v0, 0x11238

    if-gt p0, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static blacklist is6GHz(I)Z
    .registers 3
    .param p0, "freqMhz"    # I

    .line 1016
    const/16 v0, 0x172f

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 1017
    return v1

    .line 1019
    :cond_6
    const/16 v0, 0x1743

    if-lt p0, v0, :cond_f

    const/16 v0, 0x1bcb

    if-gt p0, v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public static blacklist is6GHzPsc(I)Z
    .registers 3
    .param p0, "freqMhz"    # I

    .line 1030
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1031
    return v1

    .line 1033
    :cond_8
    add-int/lit16 v0, p0, -0x1757

    rem-int/lit8 v0, v0, 0x50

    if-nez v0, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1
.end method

.method private blacklist isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z
    .registers 7
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;

    .line 1492
    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_11

    aget-byte v4, v0, v3

    .line 1493
    .local v4, "b":B
    if-eqz v4, :cond_e

    .line 1494
    return v2

    .line 1492
    .end local v4    # "b":B
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1497
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist isValidCombinedBandForDual5GHz(II)Z
    .registers 8
    .param p0, "freqMhz1"    # I
    .param p1, "freqMhz2"    # I

    .line 1059
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->toBand(I)I

    move-result v0

    .line 1060
    .local v0, "band1":I
    invoke-static {p1}, Landroid/net/wifi/ScanResult;->toBand(I)I

    move-result v1

    .line 1061
    .local v1, "band2":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1d

    if-ne v1, v3, :cond_f

    goto :goto_1d

    .line 1067
    :cond_f
    const/16 v4, 0x157c

    const/16 v5, 0x14c8

    if-gt p0, v5, :cond_17

    if-ge p1, v4, :cond_1b

    :cond_17
    if-gt p1, v5, :cond_1c

    if-lt p0, v4, :cond_1c

    .line 1071
    :cond_1b
    return v3

    .line 1073
    :cond_1c
    return v2

    .line 1062
    :cond_1d
    :goto_1d
    if-eq v0, v1, :cond_20

    move v2, v3

    :cond_20
    return v2
.end method

.method public static blacklist toBand(I)I
    .registers 2
    .param p0, "frequency"    # I

    .line 1194
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1195
    const/4 v0, 0x1

    return v0

    .line 1196
    :cond_8
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1197
    const/4 v0, 0x2

    return v0

    .line 1198
    :cond_10
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1199
    const/16 v0, 0x8

    return v0

    .line 1200
    :cond_19
    invoke-static {p0}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1201
    const/16 v0, 0x10

    return v0

    .line 1203
    :cond_22
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist wifiStandardToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "standard"    # I

    .line 619
    packed-switch p0, :pswitch_data_1a

    .line 635
    :pswitch_3
    const/4 v0, 0x0

    return-object v0

    .line 631
    :pswitch_5
    const-string v0, "11be"

    return-object v0

    .line 629
    :pswitch_8
    const-string v0, "11ad"

    return-object v0

    .line 627
    :pswitch_b
    const-string v0, "11ax"

    return-object v0

    .line 625
    :pswitch_e
    const-string v0, "11ac"

    return-object v0

    .line 623
    :pswitch_11
    const-string v0, "11n"

    return-object v0

    .line 621
    :pswitch_14
    const-string v0, "legacy"

    return-object v0

    .line 633
    :pswitch_17
    const-string v0, "unknown"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_14
        :pswitch_3
        :pswitch_3
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public greylist-max-o clearFlag(J)V
    .registers 7
    .param p1, "flag"    # J

    .line 797
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    not-long v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 798
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 1944
    const/4 v0, 0x0

    return v0
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

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getApMldMacAddress()Landroid/net/MacAddress;
    .registers 2

    .line 114
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getApMloLinkId()I
    .registers 2

    .line 142
    iget v0, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    return v0
.end method

.method public whitelist getBand()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1212
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->toBand(I)I

    move-result v0

    return v0
.end method

.method public whitelist getInformationElements()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 1465
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getSecurityTypes()[I
    .registers 5

    .line 1474
    invoke-static {p0}, Landroid/net/wifi/util/ScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object v0

    .line 1475
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/SecurityParams;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 1476
    .local v1, "securityTypes":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_22

    .line 1477
    nop

    .line 1478
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/SecurityParams;

    invoke-virtual {v3}, Landroid/net/wifi/SecurityParams;->getSecurityType()I

    move-result v3

    .line 1477
    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->convertWifiConfigurationSecurityType(I)I

    move-result v3

    aput v3, v1, v2

    .line 1476
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1480
    .end local v2    # "i":I
    :cond_22
    return-object v1
.end method

.method public whitelist getWifiSsid()Landroid/net/wifi/WifiSsid;
    .registers 2

    .line 92
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public whitelist getWifiStandard()I
    .registers 2

    .line 603
    iget v0, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    return v0
.end method

.method public greylist-max-o is24GHz()Z
    .registers 2

    .line 1219
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o is5GHz()Z
    .registers 2

    .line 1226
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is60GHz()Z
    .registers 2

    .line 1247
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is60GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is6GHz()Z
    .registers 2

    .line 1233
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is6GHz(I)Z

    move-result v0

    return v0
.end method

.method public blacklist is6GhzPsc()Z
    .registers 2

    .line 1240
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is6GHzPsc(I)Z

    move-result v0

    return v0
.end method

.method public whitelist is80211azNtbResponder()Z
    .registers 5

    .line 809
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist is80211mcResponder()Z
    .registers 5

    .line 801
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isPasspointNetwork()Z
    .registers 5

    .line 813
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isRangingFrameProtectionRequired()Z
    .registers 5

    .line 847
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isSecureHeLtfSupported()Z
    .registers 5

    .line 834
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public whitelist isTwtResponder()Z
    .registers 5

    .line 821
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
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

    .line 178
    .local p1, "links":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/MloLink;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    .line 179
    return-void
.end method

.method public blacklist setApMldMacAddress(Landroid/net/MacAddress;)V
    .registers 2
    .param p1, "address"    # Landroid/net/MacAddress;

    .line 122
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 123
    return-void
.end method

.method public blacklist setApMloLinkId(I)V
    .registers 2
    .param p1, "linkId"    # I

    .line 150
    iput p1, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    .line 151
    return-void
.end method

.method public greylist-max-o setFlag(J)V
    .registers 5
    .param p1, "flag"    # J

    .line 788
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 789
    return-void
.end method

.method public whitelist setWifiSsid(Landroid/net/wifi/WifiSsid;)V
    .registers 4
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 82
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 83
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v0

    .line 84
    .local v0, "utf8Text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_f
    const-string v1, "<unknown ssid>"

    :goto_11
    iput-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public blacklist setWifiStandard(I)V
    .registers 2
    .param p1, "standard"    # I

    .line 611
    iput p1, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    .line 612
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 15

    .line 1893
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1894
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "<none>"

    .line 1896
    .local v1, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1897
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v3, :cond_14

    const-string v3, "<unknown ssid>"

    goto :goto_16

    :cond_14
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    :goto_16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1898
    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1899
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v3, :cond_26

    move-object v3, v1

    goto :goto_28

    :cond_26
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    :goto_28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1900
    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1901
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_38

    move-object v3, v1

    goto :goto_3a

    :cond_38
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    :goto_3a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1902
    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 1903
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1904
    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1905
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1906
    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v3, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 1907
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 1908
    const-string v2, ", distance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    const-string v4, "?"

    const/4 v5, -0x1

    if-eq v3, v5, :cond_75

    iget v3, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_76

    :cond_75
    move-object v3, v4

    :goto_76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1909
    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1910
    const-string v2, ", distanceSd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v6, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    if-eq v6, v5, :cond_8f

    iget v4, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_8f
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1911
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1913
    const-string v2, ", passpoint: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1914
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v6, 0x1

    and-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    const-string v3, "yes"

    const-string v4, "no"

    if-eqz v2, :cond_ac

    move-object v2, v3

    goto :goto_ad

    :cond_ac
    move-object v2, v4

    :goto_ad
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1915
    const-string v2, ", ChannelBandwidth: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v8, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1916
    const-string v2, ", centerFreq0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v8, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1917
    const-string v2, ", centerFreq1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v8, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1918
    const-string v2, ", standard: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v8, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    invoke-static {v8}, Landroid/net/wifi/ScanResult;->wifiStandardToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1919
    const-string v2, ", 80211mcResponder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1920
    iget-wide v8, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v10, 0x2

    and-long/2addr v8, v10

    cmp-long v2, v8, v6

    const-string v8, "is supported"

    const-string v9, "is not supported"

    if-eqz v2, :cond_f4

    move-object v2, v8

    goto :goto_f5

    :cond_f4
    move-object v2, v9

    :goto_f5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1921
    const-string v2, ", 80211azNtbResponder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1922
    nop

    .line 1923
    iget-wide v10, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v12, 0x4

    and-long/2addr v10, v12

    cmp-long v2, v10, v6

    if-eqz v2, :cond_108

    goto :goto_109

    :cond_108
    move-object v8, v9

    .line 1922
    :goto_109
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1924
    const-string v2, ", TWT Responder: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1925
    iget-wide v8, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v10, 0x8

    and-long/2addr v8, v10

    cmp-long v2, v8, v6

    if-eqz v2, :cond_11b

    goto :goto_11c

    :cond_11b
    move-object v3, v4

    :goto_11c
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1926
    const-string v2, ", Radio Chain Infos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1927
    const-string v2, ", interface name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1929
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    if-eqz v2, :cond_175

    .line 1930
    const-string v2, ", MLO Info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1931
    const-string v3, " AP MLD MAC Address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    .line 1932
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1933
    const-string v3, ", AP MLO Link-Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1934
    iget v3, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    if-ne v3, v5, :cond_160

    .line 1935
    const-string v3, "Unspecified"

    goto :goto_166

    :cond_160
    iget v3, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1934
    :goto_166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1936
    const-string v3, ", AP MLO Affiliated Links: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 1939
    :cond_175
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 13
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    int-to-long v0, v0

    .line 1950
    .local v0, "start":J
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    .line 1951
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1952
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 1954
    :cond_14
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    :goto_17
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1958
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->hessid:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1959
    iget v2, p0, Landroid/net/wifi/ScanResult;->anqpDomainId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1960
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1961
    iget v2, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1962
    iget v2, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1963
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1964
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1965
    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1966
    iget v2, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    iget v2, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    iget v2, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1969
    iget v2, p0, Landroid/net/wifi/ScanResult;->mWifiStandard:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1970
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1971
    iget-boolean v2, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1972
    iget v2, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1973
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    const-string v4, ""

    if-eqz v2, :cond_79

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_7a

    :cond_79
    move-object v2, v4

    :goto_7a
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1974
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v2, :cond_88

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_89

    :cond_88
    move-object v2, v4

    :goto_89
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1975
    iget-wide v5, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1976
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1978
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    if-eqz v2, :cond_bb

    .line 1979
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a4
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_ba

    .line 1981
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->anqpLines:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1980
    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .end local v2    # "i":I
    :cond_ba
    goto :goto_be

    .line 1985
    :cond_bb
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1987
    :goto_be
    const/4 v2, 0x0

    .line 1988
    .local v2, "anqpElementsPayloadSize":I
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    if-eqz v5, :cond_f7

    .line 1989
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v5, v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 1990
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->anqpElements:[Landroid/net/wifi/AnqpInformationElement;

    array-length v6, v5

    move v7, v3

    :goto_cd
    if-ge v7, v6, :cond_fa

    aget-object v8, v5, v7

    .line 1991
    .local v8, "element":Landroid/net/wifi/AnqpInformationElement;
    invoke-virtual {v8}, Landroid/net/wifi/AnqpInformationElement;->getVendorId()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1992
    invoke-virtual {v8}, Landroid/net/wifi/AnqpInformationElement;->getElementId()I

    move-result v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1993
    invoke-virtual {v8}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v9

    array-length v9, v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    invoke-virtual {v8}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1995
    invoke-virtual {v8}, Landroid/net/wifi/AnqpInformationElement;->getPayload()[B

    move-result-object v9

    array-length v9, v9

    add-int/2addr v2, v9

    .line 1990
    .end local v8    # "element":Landroid/net/wifi/AnqpInformationElement;
    add-int/lit8 v7, v7, 0x1

    goto :goto_cd

    .line 1998
    :cond_f7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2001
    :cond_fa
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    if-eqz v5, :cond_120

    .line 2002
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_105
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    array-length v5, v5

    if-ge v3, v5, :cond_11f

    .line 2004
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2005
    iget-object v5, p0, Landroid/net/wifi/ScanResult;->radioChainInfos:[Landroid/net/wifi/ScanResult$RadioChainInfo;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    add-int/lit8 v3, v3, 0x1

    goto :goto_105

    .end local v3    # "i":I
    :cond_11f
    goto :goto_123

    .line 2008
    :cond_120
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2010
    :goto_123
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    if-eqz v3, :cond_12d

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->ifaceName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_12d
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2014
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->mApMldMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v3, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2015
    iget v3, p0, Landroid/net/wifi/ScanResult;->mApMloLinkId:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2016
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->mAffiliatedMloLinks:Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2017
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_18a

    .line 2018
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Abnormal ScanResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2023
    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The informationElements size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". The anqpPayload size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2018
    const-string v4, "ScanResult"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    :cond_18a
    return-void
.end method
