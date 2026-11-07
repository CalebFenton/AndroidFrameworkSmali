.class public final Landroid/net/NetworkCapabilities;
.super Ljava/lang/Object;
.source "NetworkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkCapabilities$Builder;,
        Landroid/net/NetworkCapabilities$Transport;,
        Landroid/net/NetworkCapabilities$NetCapability;,
        Landroid/net/NetworkCapabilities$EnterpriseId;,
        Landroid/net/NetworkCapabilities$RedactionType;
    }
.end annotation


# static fields
.field private static final blacklist ALL_VALID_CAPABILITIES:J = 0x3fffffffffL

.field private static final blacklist ALL_VALID_ENTERPRISE_IDS:I

.field private static final blacklist ALL_VALID_TRANSPORTS:I

.field public static final blacklist CONNECTIVITY_MANAGED_CAPABILITIES:J = 0x10b0000L

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkCapabilities;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEFAULT_CAPABILITIES:J

.field public static final greylist-max-o LINK_BANDWIDTH_UNSPECIFIED:I = 0x0

.field private static final greylist-max-o MAX_NET_CAPABILITY:I = 0x25

.field public static final greylist-max-o MAX_TRANSPORT:I = 0xa

.field public static final greylist-max-o MIN_TRANSPORT:I = 0x0

.field private static final greylist-max-o MUTABLE_CAPABILITIES:J = 0x1133f4000L

.field public static final whitelist NET_CAPABILITY_BIP:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_CAPTIVE_PORTAL:I = 0x11

.field public static final whitelist NET_CAPABILITY_CBS:I = 0x5

.field public static final whitelist NET_CAPABILITY_DUN:I = 0x2

.field public static final whitelist NET_CAPABILITY_EIMS:I = 0xa

.field public static final whitelist NET_CAPABILITY_ENTERPRISE:I = 0x1d

.field public static final whitelist NET_CAPABILITY_FOREGROUND:I = 0x13

.field public static final whitelist NET_CAPABILITY_FOTA:I = 0x3

.field public static final whitelist NET_CAPABILITY_HEAD_UNIT:I = 0x20

.field public static final whitelist NET_CAPABILITY_IA:I = 0x7

.field public static final whitelist NET_CAPABILITY_IMS:I = 0x4

.field public static final whitelist NET_CAPABILITY_INTERNET:I = 0xc

.field public static final whitelist NET_CAPABILITY_LOCAL_NETWORK:I = 0x24

.field public static final whitelist NET_CAPABILITY_MCX:I = 0x17

.field public static final whitelist NET_CAPABILITY_MMS:I = 0x0

.field public static final whitelist NET_CAPABILITY_MMTEL:I = 0x21

.field public static final whitelist NET_CAPABILITY_NOT_BANDWIDTH_CONSTRAINED:I = 0x25

.field public static final whitelist NET_CAPABILITY_NOT_CONGESTED:I = 0x14

.field public static final whitelist NET_CAPABILITY_NOT_METERED:I = 0xb

.field public static final whitelist NET_CAPABILITY_NOT_RESTRICTED:I = 0xd

.field public static final whitelist NET_CAPABILITY_NOT_ROAMING:I = 0x12

.field public static final whitelist NET_CAPABILITY_NOT_SUSPENDED:I = 0x15

.field public static final whitelist NET_CAPABILITY_NOT_VCN_MANAGED:I = 0x1c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_NOT_VPN:I = 0xf

.field public static final whitelist NET_CAPABILITY_OEM_PAID:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_OEM_PRIVATE:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_PARTIAL_CONNECTIVITY:I = 0x18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_PRIORITIZE_BANDWIDTH:I = 0x23

.field public static final whitelist NET_CAPABILITY_PRIORITIZE_LATENCY:I = 0x22

.field public static final whitelist NET_CAPABILITY_RCS:I = 0x8

.field public static final whitelist NET_CAPABILITY_SUPL:I = 0x1

.field public static final whitelist NET_CAPABILITY_TEMPORARILY_NOT_METERED:I = 0x19

.field public static final whitelist NET_CAPABILITY_TRUSTED:I = 0xe

.field public static final whitelist NET_CAPABILITY_VALIDATED:I = 0x10

.field public static final whitelist NET_CAPABILITY_VEHICLE_INTERNAL:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_VSIM:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist NET_CAPABILITY_WIFI_P2P:I = 0x6

.field public static final whitelist NET_CAPABILITY_XCAP:I = 0x9

.field public static final whitelist NET_ENTERPRISE_ID_1:I = 0x1

.field public static final whitelist NET_ENTERPRISE_ID_2:I = 0x2

.field public static final whitelist NET_ENTERPRISE_ID_3:I = 0x3

.field public static final whitelist NET_ENTERPRISE_ID_4:I = 0x4

.field public static final whitelist NET_ENTERPRISE_ID_5:I = 0x5

.field private static final greylist-max-o NON_REQUESTABLE_CAPABILITIES:J = 0x1033f0000L

.field public static final blacklist REDACT_ALL:J = -0x1L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist REDACT_FOR_ACCESS_FINE_LOCATION:J = 0x1L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist REDACT_FOR_LOCAL_MAC_ADDRESS:J = 0x2L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist REDACT_FOR_NETWORK_SETTINGS:J = 0x4L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist REDACT_NONE:J = 0x0L
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist RES_ID_MATCH_ALL_RESERVATIONS:I = -0x1

.field public static final blacklist RES_ID_UNSET:I = 0x0

.field public static final whitelist SIGNAL_STRENGTH_UNSPECIFIED:I = -0x80000000

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkCapabilities"

.field private static final blacklist TEST_NETWORKS_ALLOWED_CAPABILITIES:J = 0x201234a800L

.field private static final blacklist TEST_NETWORKS_EXTRA_ALLOWED_CAPABILITIES_ON_NON_CELL:J = 0x124L

.field public static final whitelist TRANSPORT_BLUETOOTH:I = 0x2

.field public static final whitelist TRANSPORT_CELLULAR:I = 0x0

.field public static final whitelist TRANSPORT_ETHERNET:I = 0x3

.field public static final whitelist TRANSPORT_LOWPAN:I = 0x6

.field private static final greylist-max-o TRANSPORT_NAMES:[Ljava/lang/String;

.field public static final whitelist TRANSPORT_SATELLITE:I = 0xa

.field public static final blacklist TRANSPORT_TEST:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final whitelist TRANSPORT_THREAD:I = 0x9

.field public static final whitelist TRANSPORT_USB:I = 0x8

.field public static final whitelist TRANSPORT_VPN:I = 0x4

.field public static final whitelist TRANSPORT_WIFI:I = 0x1

.field public static final whitelist TRANSPORT_WIFI_AWARE:I = 0x5

.field private static final blacklist UNRESTRICTED_TEST_NETWORKS_ALLOWED_TRANSPORTS:J = 0x98L


# instance fields
.field private blacklist mAdministratorUids:[I

.field private final blacklist mAllowedUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mEnterpriseId:I

.field private blacklist mForbiddenNetworkCapabilities:J

.field private greylist-max-o mLinkDownBandwidthKbps:I

.field private greylist-max-o mLinkUpBandwidthKbps:I

.field private blacklist mMatchNonThreadLocalNetworks:Z

.field private greylist-max-r mNetworkCapabilities:J

.field private greylist-max-o mNetworkSpecifier:Landroid/net/NetworkSpecifier;

.field private blacklist mOwnerUid:I

.field private blacklist mPrivateDnsBroken:Z

.field private blacklist mRequestorPackageName:Ljava/lang/String;

.field private blacklist mRequestorUid:I

.field private blacklist mReservationId:I

.field private greylist-max-o mSSID:Ljava/lang/String;

.field private greylist-max-p mSignalStrength:I

.field private blacklist mSubIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTransportInfo:Landroid/net/TransportInfo;

.field private greylist-max-o mTransportTypes:J

.field private greylist-max-o mUids:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUnderlyingNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ozJdaeo-v1eaki8UQPtMz6i9Db8(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->enterpriseIdNameOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedUids(Landroid/net/NetworkCapabilities;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubIds(Landroid/net/NetworkCapabilities;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEnterpriseId(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmForbiddenNetworkCapabilities(Landroid/net/NetworkCapabilities;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkDownBandwidthKbps(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkUpBandwidthKbps(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMatchNonThreadLocalNetworks(Landroid/net/NetworkCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkCapabilities(Landroid/net/NetworkCapabilities;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetworkSpecifier(Landroid/net/NetworkCapabilities;Landroid/net/NetworkSpecifier;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmOwnerUid(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPrivateDnsBroken(Landroid/net/NetworkCapabilities;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestorPackageName(Landroid/net/NetworkCapabilities;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRequestorUid(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReservationId(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSSID(Landroid/net/NetworkCapabilities;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSignalStrength(Landroid/net/NetworkCapabilities;I)V
    .registers 2

    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubIds(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTransportInfo(Landroid/net/NetworkCapabilities;Landroid/net/TransportInfo;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTransportTypes(Landroid/net/NetworkCapabilities;J)V
    .registers 3

    iput-wide p1, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmUids(Landroid/net/NetworkCapabilities;Landroid/util/ArraySet;)V
    .registers 2

    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveDefaultCapabilites(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;
    .registers 1

    invoke-direct {p0}, Landroid/net/NetworkCapabilities;->removeDefaultCapabilites()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveEnterpriseId(Landroid/net/NetworkCapabilities;I)Landroid/net/NetworkCapabilities;
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->removeEnterpriseId(I)Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetALL_VALID_ENTERPRISE_IDS()I
    .registers 1

    sget v0, Landroid/net/NetworkCapabilities;->ALL_VALID_ENTERPRISE_IDS:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetALL_VALID_TRANSPORTS()I
    .registers 1

    sget v0, Landroid/net/NetworkCapabilities;->ALL_VALID_TRANSPORTS:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidTransportType(I)V
    .registers 1

    invoke-static {p0}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 15

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "enterpriseIds":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-gt v1, v2, :cond_c

    .line 254
    shl-int v2, v3, v1

    or-int/2addr v0, v2

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 256
    .end local v1    # "i":I
    :cond_c
    sput v0, Landroid/net/NetworkCapabilities;->ALL_VALID_ENTERPRISE_IDS:I

    .line 802
    .end local v0    # "enterpriseIds":I
    const-wide/32 v0, 0xe000

    .line 806
    .local v0, "defaultCapabilities":J
    invoke-static {}, Landroid/net/connectivity/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 807
    const-wide v4, 0x2000000000L

    or-long/2addr v0, v4

    .line 809
    :cond_1d
    sput-wide v0, Landroid/net/NetworkCapabilities;->DEFAULT_CAPABILITIES:J

    .line 1376
    .end local v0    # "defaultCapabilities":J
    const/4 v0, 0x0

    .line 1377
    .local v0, "transports":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_21
    const/16 v2, 0xa

    if-gt v1, v2, :cond_2b

    .line 1378
    shl-int v2, v3, v1

    or-int/2addr v0, v2

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 1380
    .end local v1    # "i":I
    :cond_2b
    sput v0, Landroid/net/NetworkCapabilities;->ALL_VALID_TRANSPORTS:I

    .line 1388
    .end local v0    # "transports":I
    const-string v13, "THREAD"

    const-string v14, "SATELLITE"

    const-string v4, "CELLULAR"

    const-string v5, "WIFI"

    const-string v6, "BLUETOOTH"

    const-string v7, "ETHERNET"

    const-string v8, "VPN"

    const-string v9, "WIFI_AWARE"

    const-string v10, "LOWPAN"

    const-string v11, "TEST"

    const-string v12, "USB"

    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    .line 2428
    new-instance v0, Landroid/net/NetworkCapabilities$1;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$1;-><init>()V

    sput-object v0, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    .line 1635
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    .line 1715
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 1716
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 1789
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 1790
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 1887
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 1970
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 2114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    .line 2853
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    .line 315
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 316
    sget-wide v0, Landroid/net/NetworkCapabilities;->DEFAULT_CAPABILITIES:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 317
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 320
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;J)V

    .line 321
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/NetworkCapabilities;J)V
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "redactions"    # J

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1567
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    .line 1635
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    .line 1715
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 1716
    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 1789
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 1790
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 1887
    const/high16 v1, -0x80000000

    iput v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 1970
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 2114
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    .line 2853
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    .line 332
    if-eqz p1, :cond_2d

    .line 333
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->set(Landroid/net/NetworkCapabilities;)V

    .line 335
    :cond_2d
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    if-eqz v0, :cond_39

    .line 336
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    invoke-interface {v0, p2, p3}, Landroid/net/TransportInfo;->makeCopy(J)Landroid/net/TransportInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 338
    :cond_39
    return-void
.end method

.method public static greylist-max-o capabilityNameOf(I)Ljava/lang/String;
    .registers 2
    .param p0, "capability"    # I

    .line 2609
    packed-switch p0, :pswitch_data_7a

    .line 2648
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2647
    :pswitch_8
    const-string v0, "NOT_BANDWIDTH_CONSTRAINED"

    return-object v0

    .line 2646
    :pswitch_b
    const-string v0, "LOCAL_NETWORK"

    return-object v0

    .line 2645
    :pswitch_e
    const-string v0, "PRIORITIZE_BANDWIDTH"

    return-object v0

    .line 2644
    :pswitch_11
    const-string v0, "PRIORITIZE_LATENCY"

    return-object v0

    .line 2643
    :pswitch_14
    const-string v0, "MMTEL"

    return-object v0

    .line 2642
    :pswitch_17
    const-string v0, "HEAD_UNIT"

    return-object v0

    .line 2641
    :pswitch_1a
    const-string v0, "BIP"

    return-object v0

    .line 2640
    :pswitch_1d
    const-string v0, "VSIM"

    return-object v0

    .line 2639
    :pswitch_20
    const-string v0, "ENTERPRISE"

    return-object v0

    .line 2638
    :pswitch_23
    const-string v0, "NOT_VCN_MANAGED"

    return-object v0

    .line 2637
    :pswitch_26
    const-string v0, "VEHICLE_INTERNAL"

    return-object v0

    .line 2636
    :pswitch_29
    const-string v0, "OEM_PRIVATE"

    return-object v0

    .line 2635
    :pswitch_2c
    const-string v0, "TEMPORARILY_NOT_METERED"

    return-object v0

    .line 2634
    :pswitch_2f
    const-string v0, "PARTIAL_CONNECTIVITY"

    return-object v0

    .line 2633
    :pswitch_32
    const-string v0, "MCX"

    return-object v0

    .line 2632
    :pswitch_35
    const-string v0, "OEM_PAID"

    return-object v0

    .line 2631
    :pswitch_38
    const-string v0, "NOT_SUSPENDED"

    return-object v0

    .line 2630
    :pswitch_3b
    const-string v0, "NOT_CONGESTED"

    return-object v0

    .line 2629
    :pswitch_3e
    const-string v0, "FOREGROUND"

    return-object v0

    .line 2628
    :pswitch_41
    const-string v0, "NOT_ROAMING"

    return-object v0

    .line 2627
    :pswitch_44
    const-string v0, "CAPTIVE_PORTAL"

    return-object v0

    .line 2626
    :pswitch_47
    const-string v0, "VALIDATED"

    return-object v0

    .line 2625
    :pswitch_4a
    const-string v0, "NOT_VPN"

    return-object v0

    .line 2624
    :pswitch_4d
    const-string v0, "TRUSTED"

    return-object v0

    .line 2623
    :pswitch_50
    const-string v0, "NOT_RESTRICTED"

    return-object v0

    .line 2622
    :pswitch_53
    const-string v0, "INTERNET"

    return-object v0

    .line 2621
    :pswitch_56
    const-string v0, "NOT_METERED"

    return-object v0

    .line 2620
    :pswitch_59
    const-string v0, "EIMS"

    return-object v0

    .line 2619
    :pswitch_5c
    const-string v0, "XCAP"

    return-object v0

    .line 2618
    :pswitch_5f
    const-string v0, "RCS"

    return-object v0

    .line 2617
    :pswitch_62
    const-string v0, "IA"

    return-object v0

    .line 2616
    :pswitch_65
    const-string v0, "WIFI_P2P"

    return-object v0

    .line 2615
    :pswitch_68
    const-string v0, "CBS"

    return-object v0

    .line 2614
    :pswitch_6b
    const-string v0, "IMS"

    return-object v0

    .line 2613
    :pswitch_6e
    const-string v0, "FOTA"

    return-object v0

    .line 2612
    :pswitch_71
    const-string v0, "DUN"

    return-object v0

    .line 2611
    :pswitch_74
    const-string v0, "SUPL"

    return-object v0

    .line 2610
    :pswitch_77
    const-string v0, "MMS"

    return-object v0

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_77
        :pswitch_74
        :pswitch_71
        :pswitch_6e
        :pswitch_6b
        :pswitch_68
        :pswitch_65
        :pswitch_62
        :pswitch_5f
        :pswitch_5c
        :pswitch_59
        :pswitch_56
        :pswitch_53
        :pswitch_50
        :pswitch_4d
        :pswitch_4a
        :pswitch_47
        :pswitch_44
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_35
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static greylist-max-o capabilityNamesOf([I)Ljava/lang/String;
    .registers 6
    .param p0, "capabilities"    # [I

    .line 2596
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2597
    .local v0, "joiner":Ljava/util/StringJoiner;
    if-eqz p0, :cond_19

    .line 2598
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    aget v3, p0, v2

    .line 2599
    .local v3, "c":I
    invoke-static {v3}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2598
    .end local v3    # "c":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2602
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static blacklist checkValidEnterpriseId(I)V
    .registers 4
    .param p0, "enterpriseId"    # I

    .line 2699
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidEnterpriseId(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2703
    return-void

    .line 2700
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterprise capability identifier "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o checkValidTransportType(I)V
    .registers 4
    .param p0, "transport"    # I

    .line 2682
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2685
    return-void

    .line 2683
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid TransportType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist enterpriseIdNameOf(I)Ljava/lang/String;
    .registers 2
    .param p0, "capability"    # I

    .line 2654
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist equalsAllowedUids(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "other"    # Landroid/net/NetworkCapabilities;

    .line 2175
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist equalsEnterpriseCapabilitiesId(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1161
    iget v0, p1, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    iget v1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1771
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist equalsMatchNonThreadLocalNetworks(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2983
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    iget-boolean v1, p1, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p1, "that"    # Landroid/net/NetworkCapabilities;

    .line 1200
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide v2, -0x1033f0001L

    and-long/2addr v0, v2

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v4, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_1b

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    and-long/2addr v0, v2

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    return v0
.end method

.method private blacklist equalsOwnerUid(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1618
    iget v0, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist equalsPrivateDnsBroken(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2737
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    iget-boolean v1, p1, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private blacklist equalsRequestor(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2846
    iget v0, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    .line 2847
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 2846
    :goto_13
    return v0
.end method

.method private blacklist equalsReservationId(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2941
    iget v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mReservationId:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1932
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o equalsSpecifier(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1870
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist equalsSubscriptionIds(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2885
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist equalsTransportInfo(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1874
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist equalsUnderlyingNetworks(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1084
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static whitelist getCapabilityCarrierName(I)Ljava/lang/String;
    .registers 2
    .param p0, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1131
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_9

    .line 1132
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method private static greylist-max-o isValidCapability(I)Z
    .registers 2
    .param p0, "capability"    # I

    .line 2688
    if-ltz p0, :cond_8

    const/16 v0, 0x25

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static blacklist isValidEnterpriseId(I)Z
    .registers 3
    .param p0, "enterpriseId"    # I

    .line 2693
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v1, 0x5

    if-gt p0, v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static greylist-max-o isValidTransport(I)Z
    .registers 2
    .param p0, "transportType"    # I

    .line 1385
    if-ltz p0, :cond_8

    const/16 v0, 0xa

    if-gt p0, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public static greylist-max-o maxBandwidth(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1786
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static greylist-max-o minBandwidth(II)I
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 1776
    if-nez p0, :cond_3

    .line 1777
    return p1

    .line 1778
    :cond_3
    if-nez p1, :cond_6

    .line 1779
    return p0

    .line 1781
    :cond_6
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private blacklist removeDefaultCapabilites()Landroid/net/NetworkCapabilities;
    .registers 5

    .line 3016
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    sget-wide v2, Landroid/net/NetworkCapabilities;->DEFAULT_CAPABILITIES:J

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 3017
    return-object p0
.end method

.method private blacklist removeEnterpriseId(I)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "enterpriseId"    # I

    .line 1043
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidEnterpriseId(I)V

    .line 1044
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    not-int v0, v0

    .line 1045
    .local v0, "mask":I
    iget v1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    and-int/2addr v1, v0

    iput v1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    .line 1046
    return-object p0
.end method

.method private blacklist satisfiedByEnterpriseCapabilitiesId(Landroid/net/NetworkCapabilities;)Z
    .registers 10
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1165
    iget v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    .line 1166
    .local v0, "requestedEnterpriseCapabilitiesId":I
    iget v1, p1, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    .line 1168
    .local v1, "providedEnterpriseCapabailitiesId":I
    and-int v2, v1, v0

    const/4 v3, 0x1

    if-ne v2, v0, :cond_a

    .line 1170
    return v3

    .line 1171
    :cond_a
    if-nez v1, :cond_14

    int-to-long v4, v0

    const-wide/16 v6, 0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_14

    .line 1173
    return v3

    .line 1175
    :cond_14
    const/4 v2, 0x0

    return v2
.end method

.method private greylist-max-o satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1767
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-gt v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private blacklist satisfiedByMatchNonThreadLocalNetworks(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2991
    const/16 v0, 0x24

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    return v1

    .line 2993
    :cond_a
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    if-eqz v0, :cond_f

    return v1

    .line 2995
    :cond_f
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    return v0
.end method

.method private greylist-max-o satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .registers 13
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "onlyImmutable"    # Z

    .line 1181
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 1182
    .local v0, "requestedCapabilities":J
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 1183
    .local v2, "requestedForbiddenCapabilities":J
    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 1185
    .local v4, "providedCapabilities":J
    if-eqz p2, :cond_f

    .line 1186
    const-wide v6, -0x1133f4001L

    and-long/2addr v0, v6

    .line 1187
    and-long/2addr v2, v6

    .line 1189
    :cond_f
    and-long v6, v4, v0

    cmp-long v6, v6, v0

    if-nez v6, :cond_1f

    and-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1f

    const/4 v6, 0x1

    goto :goto_20

    :cond_1f
    const/4 v6, 0x0

    :goto_20
    return v6
.end method

.method private greylist-max-o satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .param p2, "onlyImmutable"    # Z

    .line 2230
    if-eqz p1, :cond_58

    .line 2231
    invoke-direct {p0, p1, p2}, Landroid/net/NetworkCapabilities;->satisfiedByNetCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2232
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    if-nez p2, :cond_16

    .line 2233
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2234
    :cond_16
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2235
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByEnterpriseCapabilitiesId(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    if-nez p2, :cond_2a

    .line 2236
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_2a
    if-nez p2, :cond_32

    .line 2237
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByUids(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_32
    if-nez p2, :cond_3a

    .line 2238
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySSID(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_3a
    if-nez p2, :cond_42

    .line 2239
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByRequestor(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    :cond_42
    if-nez p2, :cond_4a

    .line 2240
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedBySubscriptionIds(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2241
    :cond_4a
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByReservationId(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2242
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->satisfiedByMatchNonThreadLocalNetworks(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_58

    const/4 v0, 0x1

    goto :goto_59

    :cond_58
    const/4 v0, 0x0

    .line 2230
    :goto_59
    return v0
.end method

.method private blacklist satisfiedByRequestor(Landroid/net/NetworkCapabilities;)Z
    .registers 5
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2834
    iget v0, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_26

    iget v0, p1, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    if-ne v0, v2, :cond_b

    goto :goto_26

    .line 2838
    :cond_b
    iget v0, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    if-eq v0, v2, :cond_13

    const/4 v0, 0x0

    return v0

    .line 2840
    :cond_13
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    if-nez v0, :cond_1c

    goto :goto_25

    .line 2842
    :cond_1c
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 2840
    :cond_25
    :goto_25
    return v1

    .line 2835
    :cond_26
    :goto_26
    return v1
.end method

.method private blacklist satisfiedByReservationId(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2945
    iget v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_d

    .line 2948
    iget v0, p1, Landroid/net/NetworkCapabilities;->mReservationId:I

    if-eq v0, v2, :cond_c

    move v1, v3

    :cond_c
    return v1

    .line 2953
    :cond_d
    iget v0, p1, Landroid/net/NetworkCapabilities;->mReservationId:I

    if-ne v0, v2, :cond_12

    .line 2954
    return v3

    .line 2956
    :cond_12
    iget v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    iget v2, p1, Landroid/net/NetworkCapabilities;->mReservationId:I

    if-ne v0, v2, :cond_19

    move v1, v3

    :cond_19
    return v1
.end method

.method private greylist-max-o satisfiedBySignalStrength(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1928
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iget v1, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    if-gt v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private greylist-max-o satisfiedBySpecifier(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1865
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    if-eqz v0, :cond_17

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v0, v1}, Landroid/net/NetworkSpecifier;->canBeSatisfiedBy(Landroid/net/NetworkSpecifier;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    instance-of v0, v0, Landroid/net/MatchAllNetworkSpecifier;

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method private blacklist satisfiedBySubscriptionIds(Landroid/net/NetworkCapabilities;)Z
    .registers 7
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2894
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 2895
    :cond_a
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    return v2

    .line 2896
    :cond_14
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2897
    .local v3, "subId":Ljava/lang/Integer;
    iget-object v4, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    return v1

    .line 2898
    .end local v3    # "subId":Ljava/lang/Integer;
    :cond_2f
    goto :goto_1a

    .line 2899
    :cond_30
    return v2
.end method

.method private greylist-max-o satisfiedByTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .registers 8
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1526
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v4, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method private blacklist specifierAcceptableForMultipleTransports(J)Z
    .registers 7
    .param p1, "transportTypes"    # J

    .line 1823
    const-wide/16 v0, -0x81

    and-long/2addr v0, p1

    const-wide/16 v2, 0x401

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public static greylist-max-o transportNameOf(I)Ljava/lang/String;
    .registers 2
    .param p0, "transport"    # I

    .line 2675
    invoke-static {p0}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2676
    const-string v0, "UNKNOWN"

    return-object v0

    .line 2678
    :cond_9
    sget-object v0, Landroid/net/NetworkCapabilities;->TRANSPORT_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static greylist-max-r transportNamesOf([I)Ljava/lang/String;
    .registers 6
    .param p0, "types"    # [I

    .line 2662
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "|"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2663
    .local v0, "joiner":Ljava/util/StringJoiner;
    if-eqz p0, :cond_19

    .line 2664
    array-length v1, p0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_19

    aget v3, p0, v2

    .line 2665
    .local v3, "t":I
    invoke-static {v3}, Landroid/net/NetworkCapabilities;->transportNameOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2664
    .end local v3    # "t":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 2668
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private blacklist writeParcelableArraySet(Landroid/os/Parcel;Landroid/util/ArraySet;I)V
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/util/ArraySet<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2396
    .local p2, "val":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    .line 2397
    .local v0, "size":I
    :goto_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2398
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_1a

    .line 2399
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, p3}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2398
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2401
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method


# virtual methods
.method public blacklist addCapability(I)Landroid/net/NetworkCapabilities;
    .registers 8
    .param p1, "capability"    # I

    .line 868
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addCapability is called with invalid capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-object p0

    .line 872
    :cond_1f
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    or-long/2addr v0, v4

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 874
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 875
    return-object p0
.end method

.method public blacklist addEnterpriseId(I)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "enterpriseId"    # I

    .line 1028
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidEnterpriseId(I)V

    .line 1029
    iget v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    .line 1030
    return-object p0
.end method

.method public blacklist addForbiddenCapability(I)V
    .registers 8
    .param p1, "capability"    # I

    .line 892
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addForbiddenCapability is called with invalid capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void

    .line 896
    :cond_1f
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    const-wide/16 v2, 0x1

    shl-long v4, v2, p1

    or-long/2addr v0, v4

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 897
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 898
    return-void
.end method

.method public blacklist addTransportType(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "transportType"    # I

    .line 1426
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    .line 1427
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 1428
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1429
    return-object p0
.end method

.method public greylist-max-o appliesToUid(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 2022
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2023
    :cond_6
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 2024
    .local v2, "range":Landroid/net/UidRange;
    invoke-virtual {v2, p1}, Landroid/net/UidRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2025
    return v1

    .line 2027
    .end local v2    # "range":Landroid/net/UidRange;
    :cond_1f
    goto :goto_c

    .line 2028
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o appliesToUidRange(Landroid/net/UidRange;)Z
    .registers 6
    .param p1, "requiredRange"    # Landroid/net/UidRange;

    .line 2088
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 2089
    :cond_6
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 2090
    .local v2, "uidRange":Landroid/net/UidRange;
    invoke-virtual {v2, p1}, Landroid/net/UidRange;->containsRange(Landroid/net/UidRange;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2091
    return v1

    .line 2093
    .end local v2    # "uidRange":Landroid/net/UidRange;
    :cond_1f
    goto :goto_c

    .line 2094
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o clearAll()V
    .registers 4

    .line 346
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 347
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 349
    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 350
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 351
    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 352
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 353
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    .line 354
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    .line 355
    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    .line 356
    iput-boolean v0, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    .line 357
    iput v2, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    .line 358
    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    .line 359
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    .line 360
    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    .line 361
    iput v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    .line 362
    iput v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    .line 363
    iput-boolean v0, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    .line 364
    return-void
.end method

.method public blacklist describeCapsDifferencesFrom(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 7
    .param p1, "old"    # Landroid/net/NetworkCapabilities;

    .line 2319
    if-nez p1, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_7

    :cond_5
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 2320
    .local v0, "oldCaps":J
    :goto_7
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    new-instance v4, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1, v2, v3, v4}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->describeDifferences(JJLandroid/net/connectivity/com/android/net/module/util/BitUtils$NameOf;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 2391
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o describeFirstNonRequestableCapability()Ljava/lang/String;
    .registers 5

    .line 1146
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    or-long/2addr v0, v2

    const-wide v2, 0x1033f0000L

    and-long/2addr v0, v2

    .line 1149
    .local v0, "nonRequestable":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1d

    .line 1150
    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1152
    :cond_1d
    iget v2, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    if-nez v2, :cond_3a

    iget v2, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-eqz v2, :cond_26

    goto :goto_3a

    .line 1153
    :cond_26
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_2f

    const-string v2, "signalStrength"

    return-object v2

    .line 1154
    :cond_2f
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 1155
    const-string v2, "privateDnsBroken"

    return-object v2

    .line 1157
    :cond_38
    const/4 v2, 0x0

    return-object v2

    .line 1152
    :cond_3a
    :goto_3a
    const-string v2, "link bandwidth"

    return-object v2
.end method

.method public greylist-max-o describeImmutableDifferences(Landroid/net/NetworkCapabilities;)Ljava/lang/String;
    .registers 13
    .param p1, "that"    # Landroid/net/NetworkCapabilities;

    .line 2276
    if-nez p1, :cond_5

    .line 2277
    const-string v0, "other NetworkCapabilities was null"

    return-object v0

    .line 2280
    :cond_5
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2284
    .local v0, "joiner":Ljava/util/StringJoiner;
    const-wide v1, -0x1133f4801L

    .line 2285
    .local v1, "mask":J
    iget-wide v3, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide v5, -0x1133f4801L

    and-long/2addr v3, v5

    .line 2286
    .local v3, "oldImmutableCapabilities":J
    iget-wide v7, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v5, v7

    .line 2287
    .local v5, "newImmutableCapabilities":J
    cmp-long v7, v3, v5

    if-eqz v7, :cond_3d

    .line 2288
    invoke-static {v3, v4}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v7

    .line 2290
    .local v7, "before":Ljava/lang/String;
    invoke-static {v5, v6}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkCapabilities;->capabilityNamesOf([I)Ljava/lang/String;

    move-result-object v8

    .line 2292
    .local v8, "after":Ljava/lang/String;
    const-string v9, "immutable capabilities changed: %s -> %s"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2295
    .end local v7    # "before":Ljava/lang/String;
    .end local v8    # "after":Ljava/lang/String;
    :cond_3d
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_58

    .line 2296
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v7

    .line 2297
    .local v7, "before":Landroid/net/NetworkSpecifier;
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object v8

    .line 2298
    .local v8, "after":Landroid/net/NetworkSpecifier;
    const-string v9, "specifier changed: %s -> %s"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2301
    .end local v7    # "before":Landroid/net/NetworkSpecifier;
    .end local v8    # "after":Landroid/net/NetworkSpecifier;
    :cond_58
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v7

    if-nez v7, :cond_7b

    .line 2302
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    invoke-static {v7}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v7

    .line 2303
    .local v7, "before":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v8

    invoke-static {v8}, Landroid/net/NetworkCapabilities;->transportNamesOf([I)Ljava/lang/String;

    move-result-object v8

    .line 2304
    .local v8, "after":Ljava/lang/String;
    const-string v9, "transports changed: %s -> %s"

    filled-new-array {v7, v8}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2307
    .end local v7    # "before":Ljava/lang/String;
    .end local v8    # "after":Ljava/lang/String;
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public greylist-max-o equalRequestableCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2331
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 2332
    :cond_4
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilitiesRequestable(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2333
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 2334
    invoke-direct {p0, p1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    nop

    .line 2332
    :goto_19
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2339
    const/4 v0, 0x0

    if-eqz p1, :cond_7c

    instance-of v1, p1, Landroid/net/NetworkCapabilities;

    if-nez v1, :cond_9

    goto/16 :goto_7c

    .line 2340
    :cond_9
    move-object v1, p1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 2341
    .local v1, "that":Landroid/net/NetworkCapabilities;
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2342
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2343
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsLinkBandwidths(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2344
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSignalStrength(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2345
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSpecifier(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2346
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsTransportInfo(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2347
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsUids(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2348
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsAllowedUids(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2349
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSSID(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2350
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsOwnerUid(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2351
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsPrivateDnsBroken(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2352
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsRequestor(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2353
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->equalsAdministratorUids(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2354
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsSubscriptionIds(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2355
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsUnderlyingNetworks(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2356
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsEnterpriseCapabilitiesId(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2357
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsReservationId(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 2358
    invoke-direct {p0, v1}, Landroid/net/NetworkCapabilities;->equalsMatchNonThreadLocalNetworks(Landroid/net/NetworkCapabilities;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const/4 v0, 0x1

    goto :goto_7b

    :cond_7a
    nop

    .line 2341
    :goto_7b
    return v0

    .line 2339
    .end local v1    # "that":Landroid/net/NetworkCapabilities;
    :cond_7c
    :goto_7c
    return v0
.end method

.method public blacklist equalsAdministratorUids(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1701
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o equalsNetCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1195
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public greylist-max-o equalsSSID(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2209
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o equalsTransportTypes(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 1532
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public greylist-max-o equalsUids(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2047
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-static {v0, v1}, Landroid/net/UidRange;->hasSameUids(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public whitelist getAdministratorUids()[I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1687
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAllowedUids()Ljava/util/Set;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2147
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public blacklist getAllowedUidsNoCopy()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2154
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    return-object v0
.end method

.method public blacklist getApplicableRedactions()J
    .registers 3

    .line 3009
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    if-nez v0, :cond_7

    .line 3010
    const-wide/16 v0, 0x0

    return-wide v0

    .line 3012
    :cond_7
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    invoke-interface {v0}, Landroid/net/TransportInfo;->getApplicableRedactions()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getCapabilities()[I
    .registers 3

    .line 980
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCapabilitiesInternal()J
    .registers 3

    .line 971
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    return-wide v0
.end method

.method public whitelist getEnterpriseIds()[I
    .registers 3

    .line 289
    const/16 v0, 0x1d

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    if-nez v0, :cond_12

    .line 290
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    return-object v0

    .line 292
    :cond_12
    iget v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnterpriseIdsInternal()I
    .registers 2

    .line 276
    iget v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    return v0
.end method

.method public blacklist getForbiddenCapabilities()[I
    .registers 3

    .line 992
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public whitelist getLinkDownstreamBandwidthKbps()I
    .registers 2

    .line 1763
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    return v0
.end method

.method public whitelist getLinkUpstreamBandwidthKbps()I
    .registers 2

    .line 1739
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    return v0
.end method

.method public blacklist getMatchNonThreadLocalNetworks()Z
    .registers 2

    .line 2971
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    return v0
.end method

.method public whitelist getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .registers 2

    .line 1848
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    return-object v0
.end method

.method public whitelist getOwnerUid()I
    .registers 2

    .line 1614
    iget v0, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    return v0
.end method

.method public blacklist getRequestorPackageName()Ljava/lang/String;
    .registers 2

    .line 2803
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRequestorUid()I
    .registers 2

    .line 2770
    iget v0, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    return v0
.end method

.method public blacklist getReservationId()I
    .registers 2

    .line 2929
    iget v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    return v0
.end method

.method public whitelist getSignalStrength()I
    .registers 2

    .line 1924
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    return v0
.end method

.method public whitelist getSsid()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2201
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSubscriptionIds()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2878
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public whitelist getTransportInfo()Landroid/net/TransportInfo;
    .registers 2

    .line 1861
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    return-object v0
.end method

.method public whitelist getTransportTypes()[I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1470
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->unpackBits(J)[I

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTransportTypesInternal()J
    .registers 3

    .line 1482
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    return-wide v0
.end method

.method public blacklist getUidRanges()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation

    .line 2012
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 2014
    :cond_6
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    return-object v0
.end method

.method public greylist-max-o getUids()Ljava/util/Set;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 2003
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/net/UidRange;->toIntRanges(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getUnderlyingNetworks()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;"
        }
    .end annotation

    .line 1080
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    return-object v0
.end method

.method public blacklist hasAllowedUids()Z
    .registers 2

    .line 2171
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist hasCapability(I)Z
    .registers 6
    .param p1, "capability"    # I

    .line 1094
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public blacklist hasConnectivityManagedCapability()Z
    .registers 5

    .line 1117
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/32 v2, 0x10b0000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method public whitelist hasEnterpriseId(I)Z
    .registers 7
    .param p1, "enterpriseId"    # I

    .line 305
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 306
    const/16 v1, 0x1d

    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_10

    iget v1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    if-nez v1, :cond_10

    .line 307
    return v0

    .line 310
    :cond_10
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidEnterpriseId(I)Z

    move-result v1

    if-eqz v1, :cond_24

    iget v1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    shl-long/2addr v3, p1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public blacklist hasForbiddenCapability(I)Z
    .registers 6
    .param p1, "capability"    # I
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 1108
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public greylist-max-r hasSignalStrength()Z
    .registers 3

    .line 1915
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasSingleTransport(I)Z
    .registers 7
    .param p1, "transportType"    # I

    .line 1510
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int v3, v2, p1

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    :goto_c
    return v2
.end method

.method public blacklist hasSingleTransportBesidesTest(I)Z
    .registers 7
    .param p1, "transportType"    # I

    .line 1522
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-int v3, v2, p1

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method public whitelist hasTransport(I)Z
    .registers 7
    .param p1, "transportType"    # I

    .line 1502
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidTransport(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int v3, v2, p1

    int-to-long v3, v3

    and-long/2addr v0, v3

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    return v2
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 2363
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v2, -0x1

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const/16 v1, 0x20

    shr-long/2addr v4, v1

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v0, v4

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    and-long/2addr v4, v2

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x5

    add-int/2addr v0, v4

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    shr-long/2addr v4, v1

    long-to-int v4, v4

    mul-int/lit8 v4, v4, 0x7

    add-int/2addr v0, v4

    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    and-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/lit8 v2, v2, 0xb

    add-int/2addr v0, v2

    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    shr-long v1, v2, v1

    long-to-int v1, v1

    mul-int/lit8 v1, v1, 0xd

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    mul-int/lit8 v1, v1, 0x13

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 2371
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x17

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 2374
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    .line 2375
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x29

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    .line 2376
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2b

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 2377
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2f

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    .line 2378
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x35

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    .line 2379
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3b

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    .line 2380
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3d

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    .line 2381
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x43

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    .line 2382
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x47

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    .line 2383
    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x49

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    mul-int/lit8 v1, v1, 0x4f

    add-int/2addr v0, v1

    iget v1, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    mul-int/lit8 v1, v1, 0x53

    add-int/2addr v0, v1

    iget-boolean v1, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    .line 2386
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    mul-int/lit8 v1, v1, 0x59

    add-int/2addr v0, v1

    .line 2363
    return v0
.end method

.method public blacklist isMetered()Z
    .registers 2

    .line 2712
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist isPrivateDnsBroken()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2723
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    return v0
.end method

.method public blacklist isUidWithAccess(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 2163
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o maybeMarkCapabilitiesRestricted()V
    .registers 3

    .line 1212
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    invoke-static {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/NetworkCapabilitiesUtils;->inferRestrictedCapability(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1213
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 1215
    :cond_d
    return-void
.end method

.method public blacklist removeAllForbiddenCapabilities()Landroid/net/NetworkCapabilities;
    .registers 3

    .line 942
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 943
    return-object p0
.end method

.method public blacklist removeCapability(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "capability"    # I

    .line 909
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeCapability is called with invalid capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-object p0

    .line 913
    :cond_1f
    const-wide/16 v0, 0x1

    shl-long/2addr v0, p1

    not-long v0, v0

    .line 914
    .local v0, "mask":J
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    and-long/2addr v2, v0

    iput-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 915
    return-object p0
.end method

.method public blacklist removeForbiddenCapability(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "capability"    # I

    .line 927
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->isValidCapability(I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeForbiddenCapability is called with invalid capability: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkCapabilities"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-object p0

    .line 932
    :cond_1f
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    const-wide/16 v2, 0x1

    shl-long/2addr v2, p1

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 933
    return-object p0
.end method

.method public greylist-max-o removeTransportType(I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "transportType"    # I

    .line 1440
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->checkValidTransportType(I)V

    .line 1441
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const/4 v2, 0x1

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 1442
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 1443
    return-object p0
.end method

.method public blacklist restrictCapabilitesForTestNetwork(I)V
    .registers 2
    .param p1, "creatorUid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1227
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->restrictCapabilitiesForTestNetwork(I)V

    .line 1228
    return-void
.end method

.method public blacklist restrictCapabilitiesForTestNetwork(I)V
    .registers 20
    .param p1, "creatorUid"    # I

    .line 1236
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-wide v2, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 1237
    .local v2, "originalCapabilities":J
    iget-wide v4, v0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 1238
    .local v4, "originalTransportTypes":J
    iget-object v6, v0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 1239
    .local v6, "originalSpecifier":Landroid/net/NetworkSpecifier;
    iget v7, v0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 1240
    .local v7, "originalSignalStrength":I
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v8

    .line 1241
    .local v8, "originalOwnerUid":I
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v9

    .line 1242
    .local v9, "originalAdministratorUids":[I
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v10

    .line 1243
    .local v10, "originalTransportInfo":Landroid/net/TransportInfo;
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getSubscriptionIds()Ljava/util/Set;

    move-result-object v11

    .line 1244
    .local v11, "originalSubIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v12, Landroid/util/ArraySet;

    iget-object v13, v0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-direct {v12, v13}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 1245
    .local v12, "originalAllowedUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 1246
    const-wide/16 v13, 0x2000

    and-long/2addr v13, v2

    const-wide/16 v15, 0x0

    cmp-long v13, v15, v13

    const-wide/16 v14, 0x80

    if-eqz v13, :cond_3a

    .line 1250
    const-wide/16 v16, 0x98

    and-long v16, v4, v16

    or-long v13, v16, v14

    iput-wide v13, v0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    goto :goto_3e

    .line 1255
    :cond_3a
    or-long v13, v4, v14

    iput-wide v13, v0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 1258
    :goto_3e
    const/4 v13, 0x7

    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->hasSingleTransport(I)Z

    move-result v13

    if-eqz v13, :cond_48

    .line 1260
    invoke-virtual {v0, v11}, Landroid/net/NetworkCapabilities;->setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities;

    .line 1263
    :cond_48
    const-wide v13, 0x201234a800L

    and-long/2addr v13, v2

    iput-wide v13, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 1264
    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v13

    if-nez v13, :cond_5f

    .line 1265
    iget-wide v13, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide/16 v15, 0x124

    and-long/2addr v15, v2

    or-long/2addr v13, v15

    iput-wide v13, v0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 1269
    :cond_5f
    iput-object v6, v0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 1270
    iput v7, v0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 1271
    iput-object v10, v0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 1272
    iget-object v13, v0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v13, v12}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 1276
    if-ne v8, v1, :cond_6f

    .line 1277
    invoke-virtual/range {p0 .. p1}, Landroid/net/NetworkCapabilities;->setOwnerUid(I)Landroid/net/NetworkCapabilities;

    .line 1279
    :cond_6f
    invoke-static {v9, v1}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v13

    if-eqz v13, :cond_7c

    .line 1280
    filled-new-array {v1}, [I

    move-result-object v13

    invoke-virtual {v0, v13}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 1283
    :cond_7c
    return-void
.end method

.method public greylist-max-o satisfiedByImmutableNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2265
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public whitelist satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;)Z
    .registers 3
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2254
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/net/NetworkCapabilities;->satisfiedByNetworkCapabilities(Landroid/net/NetworkCapabilities;Z)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o satisfiedBySSID(Landroid/net/NetworkCapabilities;)Z
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2217
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public greylist-max-o satisfiedByUids(Landroid/net/NetworkCapabilities;)Z
    .registers 6
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 2068
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v1, 0x1

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v0, :cond_a

    goto :goto_2f

    .line 2069
    :cond_a
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    .line 2070
    .local v2, "requiredRange":Landroid/net/UidRange;
    iget v3, p1, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    invoke-virtual {v2, v3}, Landroid/net/UidRange;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_25

    return v1

    .line 2071
    :cond_25
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->appliesToUidRange(Landroid/net/UidRange;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2072
    const/4 v0, 0x0

    return v0

    .line 2074
    .end local v2    # "requiredRange":Landroid/net/UidRange;
    :cond_2d
    goto :goto_10

    .line 2075
    :cond_2e
    return v1

    .line 2068
    :cond_2f
    :goto_2f
    return v1
.end method

.method public greylist-max-o set(Landroid/net/NetworkCapabilities;)V
    .registers 4
    .param p1, "nc"    # Landroid/net/NetworkCapabilities;

    .line 373
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 374
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 375
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 376
    iget v0, p1, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 377
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 378
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 379
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities;

    goto :goto_26

    .line 381
    :cond_23
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities;

    .line 383
    :goto_26
    iget v0, p1, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 384
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    if-nez v0, :cond_2f

    goto :goto_36

    :cond_2f
    new-instance v1, Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-direct {v1, v0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    :goto_36
    iput-object v1, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 385
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setAllowedUids(Ljava/util/Set;)V

    .line 386
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 387
    iget v0, p1, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    .line 388
    iget-wide v0, p1, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 389
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    .line 390
    iget-boolean v0, p1, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    iput-boolean v0, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    .line 391
    iget v0, p1, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    .line 392
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    .line 393
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p1, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    .line 396
    iget-object v0, p1, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    .line 397
    iget v0, p1, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    .line 398
    iget v0, p1, Landroid/net/NetworkCapabilities;->mReservationId:I

    iput v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    .line 399
    iget-boolean v0, p1, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    iput-boolean v0, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    .line 400
    return-void
.end method

.method public blacklist setAdministratorUids([I)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "administratorUids"    # [I

    .line 1663
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    .line 1664
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    .line 1665
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2b

    .line 1666
    iget-object v1, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    aget v1, v1, v0

    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    if-ge v1, v2, :cond_23

    .line 1665
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1667
    :cond_23
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "All administrator UIDs must be unique"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1670
    .end local v0    # "i":I
    :cond_2b
    return-object p0
.end method

.method public blacklist setAllowedUids(Ljava/util/Set;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2124
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    if-ne p1, v0, :cond_5

    return-void

    .line 2126
    :cond_5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 2128
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 2129
    return-void
.end method

.method public greylist-max-o setCapabilities([I)V
    .registers 3
    .param p1, "capabilities"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1014
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/net/NetworkCapabilities;->setCapabilities([I[I)V

    .line 1015
    return-void
.end method

.method public greylist-max-o setCapabilities([I[I)V
    .registers 5
    .param p1, "capabilities"    # [I
    .param p2, "forbiddenCapabilities"    # [I

    .line 1004
    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    .line 1005
    invoke-static {p2}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    .line 1006
    return-void
.end method

.method public greylist-max-o setCapability(IZ)Landroid/net/NetworkCapabilities;
    .registers 3
    .param p1, "capability"    # I
    .param p2, "value"    # Z

    .line 953
    if-eqz p2, :cond_6

    .line 954
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_9

    .line 956
    :cond_6
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    .line 958
    :goto_9
    return-object p0
.end method

.method public greylist-max-o setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "downKbps"    # I

    .line 1752
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    .line 1753
    return-object p0
.end method

.method public greylist-max-o setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "upKbps"    # I

    .line 1728
    iput p1, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    .line 1729
    return-object p0
.end method

.method public blacklist setMatchNonThreadLocalNetworks(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 2979
    iput-boolean p1, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    .line 2980
    return-void
.end method

.method public greylist-max-o setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;
    .registers 6
    .param p1, "networkSpecifier"    # Landroid/net/NetworkSpecifier;

    .line 1806
    if-eqz p1, :cond_27

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v2, 0x80

    cmp-long v0, v0, v2

    if-eqz v0, :cond_27

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v2, -0x81

    and-long/2addr v0, v2

    .line 1811
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 1812
    invoke-direct {p0, v0, v1}, Landroid/net/NetworkCapabilities;->specifierAcceptableForMultipleTransports(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_27

    .line 1813
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have a single non-test transport specified to use setNetworkSpecifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1817
    :cond_27
    :goto_27
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    .line 1819
    return-object p0
.end method

.method public blacklist setOwnerUid(I)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "uid"    # I

    .line 1574
    iput p1, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    .line 1575
    return-object p0
.end method

.method public blacklist setPrivateDnsBroken(Z)V
    .registers 2
    .param p1, "broken"    # Z

    .line 2733
    iput-boolean p1, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    .line 2734
    return-void
.end method

.method public blacklist setRequestorPackageName(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2786
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    .line 2787
    return-object p0
.end method

.method public blacklist setRequestorUid(I)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "uid"    # I

    .line 2754
    iput p1, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    .line 2755
    return-object p0
.end method

.method public blacklist setRequestorUidAndPackageName(ILjava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 2817
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->setRequestorUid(I)Landroid/net/NetworkCapabilities;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities;->setRequestorPackageName(Ljava/lang/String;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setReservationId(I)V
    .registers 2
    .param p1, "resId"    # I

    .line 2937
    iput p1, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    .line 2938
    return-void
.end method

.method public greylist-max-o setSSID(Ljava/lang/String;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "ssid"    # Ljava/lang/String;

    .line 2191
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    .line 2192
    return-object p0
.end method

.method public blacklist setSignalStrength(I)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "signalStrength"    # I

    .line 1904
    iput p1, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    .line 1905
    return-object p0
.end method

.method public greylist-max-o setSingleUid(I)Landroid/net/NetworkCapabilities;
    .registers 4
    .param p1, "uid"    # I

    .line 1977
    new-instance v0, Landroid/util/ArraySet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 1978
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    new-instance v1, Landroid/net/UidRange;

    invoke-direct {v1, p1, p1}, Landroid/net/UidRange;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1979
    return-object p0
.end method

.method public blacklist setSubscriptionIds(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/net/NetworkCapabilities;"
        }
    .end annotation

    .line 2863
    .local p1, "subIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    .line 2864
    return-object p0
.end method

.method public blacklist setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities;
    .registers 2
    .param p1, "transportInfo"    # Landroid/net/TransportInfo;

    .line 1837
    iput-object p1, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    .line 1838
    return-object p0
.end method

.method public greylist-max-o setTransportType(IZ)Landroid/net/NetworkCapabilities;
    .registers 3
    .param p1, "transportType"    # I
    .param p2, "value"    # Z

    .line 1454
    if-eqz p2, :cond_6

    .line 1455
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    goto :goto_9

    .line 1457
    :cond_6
    invoke-virtual {p0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    .line 1459
    :goto_9
    return-object p0
.end method

.method public greylist-max-o setTransportTypes([I)V
    .registers 4
    .param p1, "transportTypes"    # [I

    .line 1492
    invoke-static {p1}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->packBits([I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    .line 1493
    return-void
.end method

.method public greylist-max-o setUids(Ljava/util/Set;)Landroid/net/NetworkCapabilities;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)",
            "Landroid/net/NetworkCapabilities;"
        }
    .end annotation

    .line 1988
    .local p1, "uids":Ljava/util/Set;, "Ljava/util/Set<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-static {p1}, Landroid/net/UidRange;->fromIntRanges(Ljava/util/Set;)Landroid/util/ArraySet;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    .line 1989
    return-object p0
.end method

.method public blacklist setUnderlyingNetworks(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Network;",
            ">;)V"
        }
    .end annotation

    .line 1057
    .local p1, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/Network;>;"
    nop

    .line 1058
    if-nez p1, :cond_5

    const/4 v0, 0x0

    goto :goto_e

    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :goto_e
    iput-object v0, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    .line 1059
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 10

    .line 2488
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2489
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    const-wide/16 v4, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_20

    .line 2490
    const-string v2, " Transports: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2491
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    new-instance v6, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda0;-><init>()V

    const-string v7, "|"

    invoke-static {v0, v2, v3, v6, v7}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/connectivity/com/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 2494
    :cond_20
    iget-wide v2, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    cmp-long v2, v4, v2

    const-string v3, "&"

    if-eqz v2, :cond_37

    .line 2495
    const-string v2, " Capabilities: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2496
    iget-wide v6, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    new-instance v2, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v6, v7, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/connectivity/com/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 2499
    :cond_37
    iget-wide v6, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_4c

    .line 2500
    const-string v2, " Forbidden: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2501
    iget-wide v4, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    new-instance v2, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v4, v5, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/connectivity/com/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 2504
    :cond_4c
    iget v2, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    const-string v4, "Kbps"

    if-lez v2, :cond_61

    .line 2505
    const-string v2, " LinkUpBandwidth>="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    :cond_61
    iget v2, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    if-lez v2, :cond_74

    .line 2508
    const-string v2, " LinkDnBandwidth>="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    :cond_74
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    const-string v4, ">"

    if-eqz v2, :cond_89

    .line 2511
    const-string v2, " Specifier: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2513
    :cond_89
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    if-eqz v2, :cond_9c

    .line 2514
    const-string v2, " TransportInfo: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2516
    :cond_9c
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasSignalStrength()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 2517
    const-string v2, " SignalStrength: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2520
    :cond_ad
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_ec

    .line 2521
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ne v6, v2, :cond_dd

    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/UidRange;

    invoke-virtual {v2}, Landroid/net/UidRange;->count()I

    move-result v2

    if-ne v2, v6, :cond_dd

    .line 2522
    const-string v2, " Uid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/UidRange;

    iget v7, v7, Landroid/net/UidRange;->start:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_ec

    .line 2524
    :cond_dd
    const-string v2, " Uids: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2528
    :cond_ec
    :goto_ec
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->hasAllowedUids()Z

    move-result v2

    if-eqz v2, :cond_101

    .line 2529
    const-string v2, " AllowedUids: <"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2532
    :cond_101
    iget v2, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_111

    .line 2533
    const-string v2, " OwnerUid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2536
    :cond_111
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    if-eqz v2, :cond_129

    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    array-length v2, v2

    if-eqz v2, :cond_129

    .line 2537
    const-string v2, " AdminUids: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mAdministratorUids:[I

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2540
    :cond_129
    iget v2, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    if-eq v2, v4, :cond_138

    .line 2541
    const-string v2, " RequestorUid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v7, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2544
    :cond_138
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    if-eqz v2, :cond_147

    .line 2545
    const-string v2, " RequestorPkg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2548
    :cond_147
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    if-eqz v2, :cond_156

    .line 2549
    const-string v2, " SSID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2552
    :cond_156
    iget-boolean v2, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    if-eqz v2, :cond_15f

    .line 2553
    const-string v2, " PrivateDnsBroken"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2556
    :cond_15f
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_172

    .line 2557
    const-string v2, " SubscriptionIds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2560
    :cond_172
    iget v2, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    if-eqz v2, :cond_186

    .line 2561
    const-string v2, " EnterpriseId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    iget v2, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    int-to-long v7, v2

    new-instance v2, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v7, v8, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/BitUtils;->appendStringRepresentationOfBitMaskToStringBuilder(Ljava/lang/StringBuilder;JLandroid/net/connectivity/com/android/net/module/util/BitUtils$NameOf;Ljava/lang/String;)V

    .line 2566
    :cond_186
    iget v2, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    if-eqz v2, :cond_1a3

    .line 2567
    iget v2, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    if-ne v2, v4, :cond_18f

    move v5, v6

    .line 2568
    .local v5, "isReservationOffer":Z
    :cond_18f
    const-string v2, " ReservationId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v5, :cond_19a

    const-string v3, "*"

    goto :goto_1a0

    :cond_19a
    iget v3, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1a0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 2571
    .end local v5    # "isReservationOffer":Z
    :cond_1a3
    iget-boolean v2, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    if-eqz v2, :cond_1ac

    .line 2572
    const-string v2, " MatchNonThreadLocalNetworks"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2575
    :cond_1ac
    const-string v2, " UnderlyingNetworks: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2576
    iget-object v2, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    const-string v3, "]"

    if-eqz v2, :cond_1e7

    .line 2577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2578
    new-instance v1, Ljava/util/StringJoiner;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 2579
    .local v1, "joiner":Ljava/util/StringJoiner;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c2
    iget-object v4, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1dc

    .line 2580
    iget-object v4, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Network;

    invoke-virtual {v4}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 2579
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c2

    .line 2582
    .end local v2    # "i":I
    :cond_1dc
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2584
    .end local v1    # "joiner":Ljava/util/StringJoiner;
    goto :goto_1ec

    .line 2585
    :cond_1e7
    const-string v1, "Null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2588
    :goto_1ec
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2589
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 2405
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mNetworkCapabilities:J

    const-wide v2, 0x3fffffffffL

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2406
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mForbiddenNetworkCapabilities:J

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2407
    iget-wide v0, p0, Landroid/net/NetworkCapabilities;->mTransportTypes:J

    sget v2, Landroid/net/NetworkCapabilities;->ALL_VALID_TRANSPORTS:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2408
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkUpBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2409
    iget v0, p0, Landroid/net/NetworkCapabilities;->mLinkDownBandwidthKbps:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2410
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mNetworkSpecifier:Landroid/net/NetworkSpecifier;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2411
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mTransportInfo:Landroid/net/TransportInfo;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2412
    iget v0, p0, Landroid/net/NetworkCapabilities;->mSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2413
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUids:Landroid/util/ArraySet;

    invoke-direct {p0, p1, v0, p2}, Landroid/net/NetworkCapabilities;->writeParcelableArraySet(Landroid/os/Parcel;Landroid/util/ArraySet;I)V

    .line 2414
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mAllowedUids:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2415
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2416
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mPrivateDnsBroken:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2417
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2418
    iget v0, p0, Landroid/net/NetworkCapabilities;->mOwnerUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2419
    iget v0, p0, Landroid/net/NetworkCapabilities;->mRequestorUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2420
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mRequestorPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2421
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mSubIds:Landroid/util/ArraySet;

    invoke-static {v0}, Landroid/net/connectivity/com/android/net/module/util/CollectionUtils;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2422
    iget-object v0, p0, Landroid/net/NetworkCapabilities;->mUnderlyingNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2423
    iget v0, p0, Landroid/net/NetworkCapabilities;->mEnterpriseId:I

    sget v1, Landroid/net/NetworkCapabilities;->ALL_VALID_ENTERPRISE_IDS:I

    and-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2424
    iget v0, p0, Landroid/net/NetworkCapabilities;->mReservationId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2425
    iget-boolean v0, p0, Landroid/net/NetworkCapabilities;->mMatchNonThreadLocalNetworks:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 2426
    return-void
.end method
