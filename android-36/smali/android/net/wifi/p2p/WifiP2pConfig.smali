.class public Landroid/net/wifi/p2p/WifiP2pConfig;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/p2p/WifiP2pConfig$Builder;,
        Landroid/net/wifi/p2p/WifiP2pConfig$P2pVersion;,
        Landroid/net/wifi/p2p/WifiP2pConfig$PccModeConnectionType;,
        Landroid/net/wifi/p2p/WifiP2pConfig$GroupClientIpProvisioningMode;,
        Landroid/net/wifi/p2p/WifiP2pConfig$GroupOperatingBandType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/p2p/WifiP2pConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist GROUP_CLIENT_IP_PROVISIONING_MODE_IPV4_DHCP:I = 0x0

.field public static final whitelist GROUP_CLIENT_IP_PROVISIONING_MODE_IPV6_LINK_LOCAL:I = 0x1

.field public static final whitelist GROUP_OWNER_BAND_2GHZ:I = 0x1

.field public static final whitelist GROUP_OWNER_BAND_5GHZ:I = 0x2

.field public static final whitelist GROUP_OWNER_BAND_6GHZ:I = 0x3

.field public static final whitelist GROUP_OWNER_BAND_AUTO:I = 0x0

.field public static final whitelist GROUP_OWNER_INTENT_AUTO:I = -0x1

.field public static final whitelist GROUP_OWNER_INTENT_MAX:I = 0xf

.field public static final whitelist GROUP_OWNER_INTENT_MIN:I = 0x0

.field public static final blacklist P2P_DEFAULT_VERSION_1:I = 0x0

.field public static final whitelist P2P_VERSION_1:I = 0x0

.field public static final whitelist P2P_VERSION_2:I = 0x1

.field public static final whitelist PCC_MODE_CONNECTION_TYPE_LEGACY_ONLY:I = 0x0

.field public static final whitelist PCC_MODE_CONNECTION_TYPE_LEGACY_OR_R2:I = 0x1

.field public static final whitelist PCC_MODE_CONNECTION_TYPE_R2_ONLY:I = 0x2

.field public static final blacklist PCC_MODE_DEFAULT_CONNECTION_TYPE_LEGACY_ONLY:I = 0x0

.field static final blacklist PSK_PASSWORD_MAX_LEN:I = 0x3f

.field static final blacklist PSK_PASSWORD_MIN_LEN:I = 0x8

.field static final blacklist SAE_PASSWORD_MAX_LEN:I = 0x80


# instance fields
.field public whitelist deviceAddress:Ljava/lang/String;

.field public blacklist groupOwnerBand:I

.field public whitelist groupOwnerIntent:I

.field private blacklist mGroupClientIpProvisioningMode:I

.field private blacklist mGroupOwnerVersion:I

.field private blacklist mIsAuthorizeConnectionFromPeerEnabled:Z

.field private blacklist mJoinExistingGroup:Z

.field private blacklist mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

.field private blacklist mPccModeConnectionType:I

.field private blacklist mVendorData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/OuiKeyedData;",
            ">;"
        }
    .end annotation
.end field

.field public greylist-max-r netId:I

.field public blacklist networkName:Ljava/lang/String;

.field public blacklist passphrase:Ljava/lang/String;

.field public whitelist wps:Landroid/net/wifi/WpsInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmGroupClientIpProvisioningMode(Landroid/net/wifi/p2p/WifiP2pConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmGroupOwnerVersion(Landroid/net/wifi/p2p/WifiP2pConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsAuthorizeConnectionFromPeerEnabled(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmJoinExistingGroup(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPairingBootstrappingConfig(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPccModeConnectionType(Landroid/net/wifi/p2p/WifiP2pConfig;I)V
    .registers 2

    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmVendorData(Landroid/net/wifi/p2p/WifiP2pConfig;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 553
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 184
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    .line 202
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    .line 205
    const/4 v1, -0x2

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    .line 303
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    .line 349
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    .line 400
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    .line 420
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 421
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 422
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/wifi/p2p/WifiP2pConfig;)V
    .registers 4
    .param p1, "source"    # Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 184
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    .line 202
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    .line 205
    const/4 v1, -0x2

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    .line 303
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    .line 349
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    .line 400
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    .line 513
    if-eqz p1, :cond_68

    .line 514
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 515
    new-instance v0, Landroid/net/wifi/WpsInfo;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-direct {v0, v1}, Landroid/net/wifi/WpsInfo;-><init>(Landroid/net/wifi/WpsInfo;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 516
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 517
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 518
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 520
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    .line 521
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 522
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    .line 523
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    .line 524
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    .line 525
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    .line 526
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    .line 527
    iget-boolean v0, p1, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    .line 529
    :cond_68
    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "supplicantEvent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 87
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 184
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    .line 202
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    .line 205
    const/4 v1, -0x2

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    .line 303
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    .line 349
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    .line 400
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    .line 432
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "tokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_71

    aget-object v2, v1, v0

    const-string v4, "P2P-GO-NEG-REQUEST"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 438
    const/4 v2, 0x1

    aget-object v4, v1, v2

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 439
    new-instance v4, Landroid/net/wifi/WpsInfo;

    invoke-direct {v4}, Landroid/net/wifi/WpsInfo;-><init>()V

    iput-object v4, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 441
    array-length v4, v1

    if-le v4, v3, :cond_70

    .line 442
    aget-object v4, v1, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, "nameVal":[Ljava/lang/String;
    :try_start_4f
    aget-object v5, v4, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_55
    .catch Ljava/lang/NumberFormatException; {:try_start_4f .. :try_end_55} :catch_56

    .line 448
    .local v5, "devPasswdId":I
    goto :goto_59

    .line 446
    .end local v5    # "devPasswdId":I
    :catch_56
    move-exception v5

    .line 447
    .local v5, "e":Ljava/lang/NumberFormatException;
    const/4 v6, 0x0

    move v5, v6

    .line 450
    .local v5, "devPasswdId":I
    :goto_59
    packed-switch v5, :pswitch_data_7a

    .line 464
    :pswitch_5c
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v0, v2, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_70

    .line 461
    :pswitch_61
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v3, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 462
    goto :goto_70

    .line 457
    :pswitch_66
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v0, v2, Landroid/net/wifi/WpsInfo;->setup:I

    .line 458
    goto :goto_70

    .line 453
    :pswitch_6b
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 454
    nop

    .line 468
    .end local v4    # "nameVal":[Ljava/lang/String;
    .end local v5    # "devPasswdId":I
    :cond_70
    :goto_70
    return-void

    .line 435
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed supplicant event"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_5c
        :pswitch_5c
        :pswitch_66
        :pswitch_61
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 508
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getGroupClientIpProvisioningMode()I
    .registers 2

    .line 478
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    return v0
.end method

.method public whitelist getGroupOwnerBand()I
    .registers 2

    .line 99
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    return v0
.end method

.method public whitelist getGroupOwnerVersion()I
    .registers 2

    .line 361
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 364
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    return v0

    .line 362
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getNetworkId()I
    .registers 2

    .line 214
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    return v0
.end method

.method public whitelist getNetworkName()Ljava/lang/String;
    .registers 2

    .line 74
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPairingBootstrappingConfig()Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;
    .registers 2

    .line 391
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 394
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    return-object v0

    .line 392
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist getPassphrase()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPccModeConnectionType()I
    .registers 2

    .line 314
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 317
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    return v0

    .line 315
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 253
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    return-object v0

    .line 254
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public greylist-max-o invalidate()V
    .registers 2

    .line 426
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 427
    return-void
.end method

.method public whitelist isAuthorizeConnectionFromPeerEnabled()Z
    .registers 2

    .line 412
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 415
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    return v0

    .line 413
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isJoinExistingGroup()Z
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 196
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    return v0
.end method

.method public whitelist setGroupOwnerVersion(I)V
    .registers 3
    .param p1, "version"    # I

    .line 376
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 379
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    .line 380
    return-void

    .line 377
    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 232
    .local p1, "vendorData":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/OuiKeyedData;>;"
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 235
    if-eqz p1, :cond_10

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    .line 239
    return-void

    .line 236
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setVendorData received a null value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 482
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    const-string v1, "\n address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 484
    const-string v1, "\n wps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 485
    const-string v1, "\n groupOwnerIntent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 486
    const-string v1, "\n persist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 487
    const-string v1, "\n networkName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    const-string v1, "\n passphrase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 489
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "<empty>"

    goto :goto_4f

    :cond_4d
    const-string v2, "<non-empty>"

    .line 488
    :goto_4f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    const-string v1, "\n pccModeConnectionType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 491
    const-string v1, "\n groupOwnerBand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 492
    const-string v1, "\n groupClientIpProvisioningMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 493
    const-string v1, "\n joinExistingGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 494
    const-string v1, "\n vendorData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 495
    const-string v1, "\n Group Owner Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 496
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v1

    if-eqz v1, :cond_b6

    .line 497
    const-string v1, "\n Pairing bootstrapping config : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 498
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    if-nez v2, :cond_ad

    .line 499
    const-string v2, "<null>"

    goto :goto_b3

    :cond_ad
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    invoke-virtual {v2}, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;->toString()Ljava/lang/String;

    move-result-object v2

    .line 498
    :goto_b3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 501
    :cond_b6
    const-string v1, "\n authorizeConnectionFromPeerEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    .line 502
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 503
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 533
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 535
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 536
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 539
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPccModeConnectionType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 541
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupClientIpProvisioningMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 542
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mJoinExistingGroup:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 543
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mVendorData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 544
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mGroupOwnerVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 545
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 546
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 548
    :cond_4d
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig;->mIsAuthorizeConnectionFromPeerEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 549
    return-void
.end method
