.class public final Landroid/net/wifi/SoftApConfiguration;
.super Ljava/lang/Object;
.source "SoftApConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/SoftApConfiguration$Builder;,
        Landroid/net/wifi/SoftApConfiguration$SecurityType;,
        Landroid/net/wifi/SoftApConfiguration$MacRandomizationSetting;,
        Landroid/net/wifi/SoftApConfiguration$BandType;
    }
.end annotation


# static fields
.field public static final whitelist BAND_2GHZ:I = 0x1

.field public static final whitelist BAND_5GHZ:I = 0x2

.field public static final whitelist BAND_60GHZ:I = 0x8

.field public static final whitelist BAND_6GHZ:I = 0x4

.field public static final whitelist BAND_ANY:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static blacklist BAND_TYPES:[I = null

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SoftApConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DEFAULT_TIMEOUT:J = -0x1L
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist FORCE_MUTUAL_EXCLUSIVE_BSSID_MAC_RAMDONIZATION_SETTING:J = 0xcdaa748L

.field private static final blacklist MAX_CH_2G_BAND:I = 0xe

.field private static final blacklist MAX_CH_5G_BAND:I = 0xc4

.field private static final blacklist MAX_CH_60G_BAND:I = 0x6

.field private static final blacklist MAX_CH_6G_BAND:I = 0xfd

.field private static final blacklist MIN_CH_2G_BAND:I = 0x1

.field private static final blacklist MIN_CH_5G_BAND:I = 0x22

.field private static final blacklist MIN_CH_60G_BAND:I = 0x1

.field private static final blacklist MIN_CH_6G_BAND:I = 0x1

.field static final blacklist PSK_MAX_LEN:I = 0x3f

.field static final blacklist PSK_MIN_LEN:I = 0x8

.field public static final whitelist RANDOMIZATION_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RANDOMIZATION_NON_PERSISTENT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist RANDOMIZATION_PERSISTENT:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REMOVE_ZERO_FOR_TIMEOUT_SETTING:J = 0xcb68ac8L

.field public static final whitelist SECURITY_TYPE_OPEN:I = 0x0

.field public static final whitelist SECURITY_TYPE_WPA2_PSK:I = 0x1

.field public static final whitelist SECURITY_TYPE_WPA3_OWE:I = 0x5

.field public static final whitelist SECURITY_TYPE_WPA3_OWE_TRANSITION:I = 0x4

.field public static final whitelist SECURITY_TYPE_WPA3_SAE:I = 0x3

.field public static final whitelist SECURITY_TYPE_WPA3_SAE_TRANSITION:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "SoftApConfiguration"


# instance fields
.field private final blacklist mAllowedAcsChannels2g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedAcsChannels5g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedAcsChannels6g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAllowedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mAutoShutdownEnabled:Z

.field private final blacklist mBlockedClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBridgedModeOpportunisticShutdownEnabled:Z

.field private final blacklist mBridgedModeOpportunisticShutdownTimeoutMillis:J

.field private final blacklist mBssid:Landroid/net/MacAddress;

.field private final blacklist mChannels:Landroid/util/SparseIntArray;

.field private final blacklist mClientControlByUser:Z

.field private final blacklist mHiddenSsid:Z

.field private blacklist mIeee80211axEnabled:Z

.field private blacklist mIeee80211beEnabled:Z

.field private blacklist mIsClientIsolationEnabled:Z

.field private blacklist mIsUserConfiguration:Z

.field private blacklist mMacRandomizationSetting:I

.field private final blacklist mMaxChannelBandwidth:I

.field private final blacklist mMaxNumberOfClients:I

.field private final blacklist mPassphrase:Ljava/lang/String;

.field private final blacklist mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

.field private final blacklist mSecurityType:I

.field private final blacklist mShutdownTimeoutMillis:J

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mVendorElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mWifiSsid:Landroid/net/wifi/WifiSsid;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAllowedAcsChannels2g(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedAcsChannels5g(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedAcsChannels6g(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAllowedClientList(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAutoShutdownEnabled(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBlockedClientList(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBridgedModeOpportunisticShutdownEnabled(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBridgedModeOpportunisticShutdownTimeoutMillis(Landroid/net/wifi/SoftApConfiguration;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBssid(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmChannels(Landroid/net/wifi/SoftApConfiguration;)Landroid/util/SparseIntArray;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmClientControlByUser(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHiddenSsid(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIeee80211axEnabled(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIeee80211beEnabled(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsClientIsolationEnabled(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsUserConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMacRandomizationSetting(Landroid/net/wifi/SoftApConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxChannelBandwidth(Landroid/net/wifi/SoftApConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxNumberOfClients(Landroid/net/wifi/SoftApConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPassphrase(Landroid/net/wifi/SoftApConfiguration;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPersistentRandomizedMacAddress(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/MacAddress;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecurityType(Landroid/net/wifi/SoftApConfiguration;)I
    .registers 1

    iget p0, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShutdownTimeoutMillis(Landroid/net/wifi/SoftApConfiguration;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorData(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVendorElements(Landroid/net/wifi/SoftApConfiguration;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWifiSsid(Landroid/net/wifi/SoftApConfiguration;)Landroid/net/wifi/WifiSsid;
    .registers 1

    iget-object p0, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisBandValid(I)Z
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/SoftApConfiguration;->isBandValid(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisChannelBandPairValid(II)Z
    .registers 2

    invoke-static {p0, p1}, Landroid/net/wifi/SoftApConfiguration;->isChannelBandPairValid(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadHashSetInt(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/SoftApConfiguration;->readHashSetInt(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/SoftApConfiguration;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smreadSparseIntArray(Landroid/os/Parcel;)Landroid/util/SparseIntArray;
    .registers 1

    invoke-static {p0}, Landroid/net/wifi/SoftApConfiguration;->readSparseIntArray(Landroid/os/Parcel;)Landroid/util/SparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 138
    const/4 v0, 0x4

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x2

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/net/wifi/SoftApConfiguration;->BAND_TYPES:[I

    .line 732
    new-instance v0, Landroid/net/wifi/SoftApConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/SoftApConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SoftApConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/WifiSsid;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZZJLjava/util/List;Landroid/net/MacAddress;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/List;Z)V
    .registers 45
    .param p1, "ssid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "bssid"    # Landroid/net/MacAddress;
    .param p3, "passphrase"    # Ljava/lang/String;
    .param p4, "hiddenSsid"    # Z
    .param p5, "channels"    # Landroid/util/SparseIntArray;
    .param p6, "securityType"    # I
    .param p7, "maxNumberOfClients"    # I
    .param p8, "shutdownTimeoutEnabled"    # Z
    .param p9, "shutdownTimeoutMillis"    # J
    .param p11, "clientControlByUser"    # Z
    .param p14, "macRandomizationSetting"    # I
    .param p15, "bridgedModeOpportunisticShutdownEnabled"    # Z
    .param p16, "ieee80211axEnabled"    # Z
    .param p17, "ieee80211beEnabled"    # Z
    .param p18, "isUserConfiguration"    # Z
    .param p19, "bridgedModeOpportunisticShutdownTimeoutMillis"    # J
    .param p22, "persistentRandomizedMacAddress"    # Landroid/net/MacAddress;
    .param p26, "maxChannelBandwidth"    # I
    .param p28, "isClientIsolationEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiSsid;",
            "Landroid/net/MacAddress;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/util/SparseIntArray;",
            "IIZJZ",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/MacAddress;",
            ">;IZZZZJ",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;",
            "Landroid/net/MacAddress;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;Z)V"
        }
    .end annotation

    .line 480
    .local p12, "blockedList":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    .local p13, "allowedList":Ljava/util/List;, "Ljava/util/List<Landroid/net/MacAddress;>;"
    .local p21, "vendorElements":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult$InformationElement;>;"
    .local p23, "allowedAcsChannels24g":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p24, "allowedAcsChannels5g":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p25, "allowedAcsChannels6g":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p27, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 481
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    .line 482
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    .line 483
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    .line 484
    move/from16 v4, p4

    iput-boolean v4, v0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    .line 485
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-eqz v5, :cond_22

    .line 486
    invoke-virtual/range {p5 .. p5}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v5

    iput-object v5, v0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    goto :goto_30

    .line 488
    :cond_22
    new-instance v5, Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v5, v0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    .line 489
    iget-object v5, v0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 491
    :goto_30
    move/from16 v5, p6

    iput v5, v0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    .line 492
    move/from16 v6, p7

    iput v6, v0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    .line 493
    move/from16 v7, p8

    iput-boolean v7, v0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    .line 494
    move-wide/from16 v8, p9

    iput-wide v8, v0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    .line 495
    move/from16 v10, p11

    iput-boolean v10, v0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    .line 496
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v12, p12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    .line 497
    new-instance v11, Ljava/util/ArrayList;

    move-object/from16 v13, p13

    invoke-direct {v11, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v11, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    .line 498
    move/from16 v11, p14

    iput v11, v0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    .line 499
    move/from16 v14, p15

    iput-boolean v14, v0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 500
    move/from16 v15, p16

    iput-boolean v15, v0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    .line 501
    move/from16 v1, p17

    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    .line 502
    move/from16 v1, p18

    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    .line 503
    move-wide/from16 v1, p19

    iput-wide v1, v0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    .line 505
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p21

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    .line 506
    move-object/from16 v1, p22

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    .line 507
    new-instance v1, Ljava/util/HashSet;

    move-object/from16 v2, p23

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    .line 508
    new-instance v1, Ljava/util/HashSet;

    move-object/from16 v2, p24

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    .line 509
    new-instance v1, Ljava/util/HashSet;

    move-object/from16 v2, p25

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    .line 510
    move/from16 v1, p26

    iput v1, v0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    .line 511
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p27

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    .line 512
    move/from16 v1, p28

    iput-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    .line 513
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/WifiSsid;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZZJLjava/util/List;Landroid/net/MacAddress;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/List;ZLandroid/net/wifi/SoftApConfiguration-IA;)V
    .registers 30

    invoke-direct/range {p0 .. p28}, Landroid/net/wifi/SoftApConfiguration;-><init>(Landroid/net/wifi/WifiSsid;Landroid/net/MacAddress;Ljava/lang/String;ZLandroid/util/SparseIntArray;IIZJZLjava/util/List;Ljava/util/List;IZZZZJLjava/util/List;Landroid/net/MacAddress;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;ILjava/util/List;Z)V

    return-void
.end method

.method private static blacklist isBandValid(I)Z
    .registers 3
    .param p0, "band"    # I

    .line 141
    const/16 v0, 0xf

    .line 142
    .local v0, "bandAny":I
    if-eqz p0, :cond_a

    not-int v1, v0

    and-int/2addr v1, p0

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method private static blacklist isChannelBandPairValid(II)Z
    .registers 5
    .param p0, "channel"    # I
    .param p1, "band"    # I

    .line 172
    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_26

    .line 198
    return v1

    .line 192
    :sswitch_6
    if-lt p0, v0, :cond_b

    const/4 v2, 0x6

    if-le p0, v2, :cond_23

    .line 193
    :cond_b
    return v1

    .line 186
    :sswitch_c
    if-lt p0, v0, :cond_12

    const/16 v2, 0xfd

    if-le p0, v2, :cond_23

    .line 187
    :cond_12
    return v1

    .line 180
    :sswitch_13
    const/16 v2, 0x22

    if-lt p0, v2, :cond_1b

    const/16 v2, 0xc4

    if-le p0, v2, :cond_23

    .line 181
    :cond_1b
    return v1

    .line 174
    :sswitch_1c
    if-lt p0, v0, :cond_24

    const/16 v2, 0xe

    if-le p0, v2, :cond_23

    goto :goto_24

    .line 200
    :cond_23
    return v0

    .line 175
    :cond_24
    :goto_24
    return v1

    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_1c
        0x2 -> :sswitch_13
        0x4 -> :sswitch_c
        0x8 -> :sswitch_6
    .end sparse-switch
.end method

.method private static blacklist readHashSetInt(Landroid/os/Parcel;)Ljava/util/Set;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 702
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 703
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 704
    .local v1, "len":I
    if-gez v1, :cond_c

    .line 705
    return-object v0

    .line 708
    :cond_c
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v1, :cond_1d

    .line 709
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 708
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 711
    .end local v2    # "i":I
    :cond_1d
    return-object v0
.end method

.method private static blacklist readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;
    .registers 4
    .param p0, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation

    .line 717
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 718
    .local v0, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 719
    const-class v1, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    goto :goto_20

    .line 721
    :cond_17
    const-class v1, Landroid/net/wifi/OuiKeyedData;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 723
    :goto_20
    return-object v0
.end method

.method private static blacklist readSparseIntArray(Landroid/os/Parcel;)Landroid/util/SparseIntArray;
    .registers 5
    .param p0, "in"    # Landroid/os/Parcel;

    .line 672
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 673
    .local v0, "n":I
    if-gez v0, :cond_c

    .line 674
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    return-object v1

    .line 676
    :cond_c
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 677
    .local v1, "sa":Landroid/util/SparseIntArray;
    :goto_11
    if-lez v0, :cond_22

    .line 678
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 679
    .local v2, "key":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 680
    .local v3, "value":I
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 681
    nop

    .end local v2    # "key":I
    .end local v3    # "value":I
    add-int/lit8 v0, v0, -0x1

    .line 682
    goto :goto_11

    .line 683
    :cond_22
    return-object v1
.end method

.method private static blacklist writeHashSetInt(Landroid/os/Parcel;Ljava/util/Set;)V
    .registers 4
    .param p0, "dest"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 688
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 689
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 690
    return-void

    .line 693
    :cond_b
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 695
    .local v1, "val":I
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 696
    .end local v1    # "val":I
    goto :goto_16

    .line 697
    :cond_2a
    return-void
.end method

.method private static blacklist writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V
    .registers 5
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "val"    # Landroid/util/SparseIntArray;

    .line 655
    if-nez p1, :cond_7

    .line 656
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    return-void

    .line 659
    :cond_7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 660
    .local v0, "n":I
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_22

    .line 663
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 667
    :cond_22
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 517
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 518
    return v0

    .line 520
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/SoftApConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 521
    return v2

    .line 523
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/SoftApConfiguration;

    .line 524
    .local v1, "other":Landroid/net/wifi/SoftApConfiguration;
    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    .line 525
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    .line 526
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    if-ne v3, v4, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    .line 528
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget v3, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    iget v4, v1, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    if-ne v3, v4, :cond_e6

    iget v3, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    iget v4, v1, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    if-ne v3, v4, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    if-ne v3, v4, :cond_e6

    iget-wide v3, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    iget-wide v5, v1, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    if-ne v3, v4, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    .line 534
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    .line 535
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget v3, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    iget v4, v1, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    if-ne v3, v4, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    if-ne v3, v4, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    if-ne v3, v4, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    if-ne v3, v4, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    if-ne v3, v4, :cond_e6

    iget-wide v3, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    iget-wide v5, v1, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    .line 544
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    .line 545
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    .line 547
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    .line 548
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    .line 549
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget v3, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    iget v4, v1, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    if-ne v3, v4, :cond_e6

    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    .line 551
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e6

    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    iget-boolean v4, v1, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    if-ne v3, v4, :cond_e6

    goto :goto_e7

    :cond_e6
    move v0, v2

    .line 524
    :goto_e7
    return v0
.end method

.method public whitelist getAllowedAcsChannels(I)[I
    .registers 5
    .param p1, "band"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1117
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1120
    packed-switch p1, :pswitch_data_64

    .line 1128
    :pswitch_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowedAcsChannels: Invalid band: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1126
    :pswitch_22
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/wifi/SoftApConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    .line 1124
    :pswitch_36
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/wifi/SoftApConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    .line 1122
    :pswitch_4a
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/SoftApConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/net/wifi/SoftApConfiguration$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0

    .line 1118
    :cond_5e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_36
        :pswitch_9
        :pswitch_22
    .end packed-switch
.end method

.method public whitelist getAllowedClientList()Ljava/util/List;
    .registers 2
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

    .line 1010
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBand()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 858
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public blacklist getBands()[I
    .registers 4

    .line 875
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 876
    .local v0, "bands":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_17

    .line 877
    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    .line 876
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 879
    .end local v1    # "i":I
    :cond_17
    return-object v0
.end method

.method public whitelist getBlockedClientList()Ljava/util/List;
    .registers 2
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

    .line 998
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getBridgedModeOpportunisticShutdownTimeoutMillis()J
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1199
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1202
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    return-wide v0

    .line 1200
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getBridgedModeOpportunisticShutdownTimeoutMillisInternal()J
    .registers 3

    .line 1210
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public whitelist getBssid()Landroid/net/MacAddress;
    .registers 2

    .line 822
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getChannel()I
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 895
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    return v0
.end method

.method public whitelist getChannels()Landroid/util/SparseIntArray;
    .registers 2

    .line 913
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 916
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0

    .line 914
    :cond_d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getMacRandomizationSetting()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1023
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1026
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMacRandomizationSettingInternal()I

    move-result v0

    return v0

    .line 1024
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getMacRandomizationSettingInternal()I
    .registers 2

    .line 1034
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    return v0
.end method

.method public whitelist getMaxChannelBandwidth()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1142
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1145
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    return v0

    .line 1143
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getMaxNumberOfClients()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 942
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    return v0
.end method

.method public whitelist getPassphrase()Ljava/lang/String;
    .registers 2

    .line 830
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPersistentRandomizedMacAddress()Landroid/net/MacAddress;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1178
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    return-object v0
.end method

.method public whitelist getSecurityType()I
    .registers 2

    .line 931
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    return v0
.end method

.method public whitelist getShutdownTimeoutMillis()J
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 966
    const-wide/32 v0, 0xcb68ac8

    invoke-static {v0, v1}, Landroid/app/compat/CompatChanges;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_14

    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 969
    const-wide/16 v0, 0x0

    return-wide v0

    .line 971
    :cond_14
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    return-wide v0
.end method

.method public whitelist getSsid()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 780
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_6

    .line 781
    const/4 v0, 0x0

    return-object v0

    .line 783
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v0}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v0

    .line 784
    .local v0, "utf8Text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_13
    const-string v1, "<unknown ssid>"

    :goto_15
    return-object v1
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

    .line 1225
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1228
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    return-object v0

    .line 1226
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getVendorElements()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 803
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 806
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getVendorElementsInternal()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 804
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist getVendorElementsInternal()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation

    .line 814
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist getWifiSsid()Landroid/net/wifi/WifiSsid;
    .registers 2

    .line 792
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 29

    .line 557
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    iget-object v2, v0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    iget-object v3, v0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    iget-boolean v4, v0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    .line 561
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    .line 562
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    .line 563
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v7, v0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    .line 564
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-boolean v8, v0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    .line 565
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-wide v9, v0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    .line 566
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-boolean v10, v0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    .line 567
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v11, v0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    iget-object v12, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    iget v13, v0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    .line 570
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget-boolean v14, v0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 571
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    iget-boolean v15, v0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    .line 572
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v16, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    .line 573
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v17, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    .line 574
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    iget-wide v1, v0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    .line 575
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    move-object/from16 v20, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    move-object/from16 v21, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    move-object/from16 v22, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    move-object/from16 v23, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    move-object/from16 v24, v1

    iget v1, v0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    .line 581
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v25, v1

    iget-object v1, v0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    move-object/from16 v26, v1

    iget-boolean v1, v0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    .line 583
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v27, v26

    move-object/from16 v26, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v27

    filled-new-array/range {v1 .. v26}, [Ljava/lang/Object;

    move-result-object v1

    .line 557
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public whitelist isAutoShutdownEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 954
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    return v0
.end method

.method public whitelist isBridgedModeOpportunisticShutdownEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1046
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1049
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabledInternal()Z

    move-result v0

    return v0

    .line 1047
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isBridgedModeOpportunisticShutdownEnabledInternal()Z
    .registers 2

    .line 1057
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    return v0
.end method

.method public whitelist isClientControlByUserEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 985
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    return v0
.end method

.method public whitelist isClientIsolationEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1243
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1246
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    return v0

    .line 1244
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isHiddenSsid()Z
    .registers 2

    .line 838
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    return v0
.end method

.method public whitelist isIeee80211axEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1078
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1081
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isIeee80211axEnabledInternal()Z

    move-result v0

    return v0

    .line 1079
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isIeee80211axEnabledInternal()Z
    .registers 2

    .line 1065
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    return v0
.end method

.method public whitelist isIeee80211beEnabled()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1094
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1097
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    return v0

    .line 1095
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isUserConfiguration()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1161
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1164
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->isUserConfigurationInternal()Z

    move-result v0

    return v0

    .line 1162
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public blacklist isUserConfigurationInternal()Z
    .registers 2

    .line 1185
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "ssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_11

    const/4 v2, 0x0

    goto :goto_17

    :cond_11
    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v2}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    if-eqz v1, :cond_2d

    const-string v1, " \n bssid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_2d
    const-string v1, " \n Passphrase = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 592
    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "<empty>"

    goto :goto_40

    :cond_3e
    const-string v2, "<non-empty>"

    .line 591
    :goto_40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 593
    const-string v1, " \n HiddenSsid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 594
    const-string v1, " \n Channels = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    const-string v1, " \n SecurityType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    const-string v1, " \n MaxClient = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 597
    const-string v1, " \n AutoShutdownEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 598
    const-string v1, " \n ShutdownTimeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 599
    const-string v1, " \n ClientControlByUser = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 600
    const-string v1, " \n BlockedClientList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 601
    const-string v1, " \n AllowedClientList= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 602
    const-string v1, " \n MacRandomizationSetting = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 603
    const-string v1, " \n BridgedModeInstanceOpportunisticEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    .line 604
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 605
    const-string v1, " \n BridgedModeOpportunisticShutdownTimeoutMillis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    .line 606
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 607
    const-string v1, " \n Ieee80211axEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 608
    const-string v1, " \n Ieee80211beEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 609
    const-string v1, " \n isUserConfiguration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 610
    const-string v1, " \n vendorElements = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, " \n mPersistentRandomizedMacAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    .line 612
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    const-string v1, " \n mAllowedAcsChannels2g = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 614
    const-string v1, " \n mAllowedAcsChannels5g = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    const-string v1, " \n mAllowedAcsChannels6g = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 616
    const-string v1, " \n mMaxChannelBandwidth = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, " \n mVendorData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, " \n mIsClientIsolationEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 619
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist toWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .registers 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1269
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1270
    .local v0, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    const/4 v2, 0x0

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->getUtf8Text()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_12

    :cond_11
    move-object v1, v2

    .line 1271
    .local v1, "utf8Text":Ljava/lang/CharSequence;
    :goto_12
    if-eqz v1, :cond_19

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :cond_19
    const-string v3, "<unknown ssid>"

    :goto_1b
    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1272
    iget-object v3, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1273
    iget-boolean v3, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1274
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getChannel()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1275
    iget v3, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    const-string v4, "SoftApConfiguration"

    const/4 v5, 0x0

    packed-switch v3, :pswitch_data_8a

    .line 1284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert fail, unsupported security type :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-object v2

    .line 1281
    :pswitch_4c
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    .line 1282
    goto :goto_59

    .line 1277
    :pswitch_53
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 1278
    nop

    .line 1288
    :goto_59
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v3

    const/4 v6, -0x1

    packed-switch v3, :pswitch_data_94

    .line 1302
    :pswitch_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Convert fail, unsupported band setting :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    return-object v2

    .line 1299
    :pswitch_7c
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1300
    goto :goto_89

    .line 1296
    :pswitch_7f
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1297
    goto :goto_89

    .line 1293
    :pswitch_82
    const/4 v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1294
    goto :goto_89

    .line 1290
    :pswitch_86
    iput v5, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1291
    nop

    .line 1305
    :goto_89
    return-object v0

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_53
        :pswitch_4c
        :pswitch_4c
    .end packed-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_86
        :pswitch_82
        :pswitch_7f
        :pswitch_61
        :pswitch_61
        :pswitch_61
        :pswitch_7c
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 624
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mWifiSsid:Landroid/net/wifi/WifiSsid;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 625
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBssid:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 626
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mHiddenSsid:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 628
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mChannels:Landroid/util/SparseIntArray;

    invoke-static {p1, v0}, Landroid/net/wifi/SoftApConfiguration;->writeSparseIntArray(Landroid/os/Parcel;Landroid/util/SparseIntArray;)V

    .line 629
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mSecurityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxNumberOfClients:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAutoShutdownEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 632
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mShutdownTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 633
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mClientControlByUser:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 634
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBlockedClientList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 635
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedClientList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 636
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mMacRandomizationSetting:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 638
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211axEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 639
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIeee80211beEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 640
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsUserConfiguration:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 641
    iget-wide v0, p0, Landroid/net/wifi/SoftApConfiguration;->mBridgedModeOpportunisticShutdownTimeoutMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 642
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 643
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mPersistentRandomizedMacAddress:Landroid/net/MacAddress;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 644
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels2g:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/net/wifi/SoftApConfiguration;->writeHashSetInt(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 645
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels5g:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/net/wifi/SoftApConfiguration;->writeHashSetInt(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 646
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mAllowedAcsChannels6g:Ljava/util/Set;

    invoke-static {p1, v0}, Landroid/net/wifi/SoftApConfiguration;->writeHashSetInt(Landroid/os/Parcel;Ljava/util/Set;)V

    .line 647
    iget v0, p0, Landroid/net/wifi/SoftApConfiguration;->mMaxChannelBandwidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    iget-object v0, p0, Landroid/net/wifi/SoftApConfiguration;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 649
    iget-boolean v0, p0, Landroid/net/wifi/SoftApConfiguration;->mIsClientIsolationEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 650
    return-void
.end method
