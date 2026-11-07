.class public final Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final blacklist MAC_ANY_ADDRESS:Landroid/net/MacAddress;

.field private static final blacklist MAX_SSID_BYTES:I = 0x20


# instance fields
.field private blacklist mDeviceAddress:Landroid/net/MacAddress;

.field private blacklist mGroupClientIpProvisioningMode:I

.field private blacklist mGroupOperatingBand:I

.field private blacklist mGroupOperatingFrequency:I

.field private blacklist mIsAuthorizeConnectionFromPeerEnabled:Z

.field private blacklist mJoinExistingGroup:Z

.field private blacklist mNetId:I

.field private blacklist mNetworkName:Ljava/lang/String;

.field private blacklist mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

.field private blacklist mPassphrase:Ljava/lang/String;

.field private blacklist mPccModeConnectionType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 596
    nop

    .line 597
    const-string v0, "02:00:00:00:00:00"

    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    .line 596
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 3

    .line 594
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 603
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    .line 605
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    .line 606
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    .line 607
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    .line 608
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    .line 609
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupClientIpProvisioningMode:I

    .line 610
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mJoinExistingGroup:Z

    .line 611
    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPccModeConnectionType:I

    .line 614
    iput-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mIsAuthorizeConnectionFromPeerEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 4

    .line 976
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_10
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    .line 977
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 978
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "network name and passphrase must be non-empty or empty both."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_29
    :goto_29
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_44

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    sget-object v1, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    .line 982
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_44

    .line 983
    :cond_3c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "peer address must be set if network name and passphrase are not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 987
    :cond_44
    :goto_44
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_7a

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    .line 988
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 989
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPccModeConnectionType:I

    if-eqz v0, :cond_5d

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPccModeConnectionType:I

    if-ne v0, v1, :cond_7a

    .line 991
    :cond_5d
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_72

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    .line 992
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x3f

    if-gt v0, v2, :cond_72

    goto :goto_7a

    .line 993
    :cond_72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of a passphrase must be between 8 and 63 for legacy connection type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :cond_7a
    :goto_7a
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    if-lez v0, :cond_8b

    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    if-gtz v0, :cond_83

    goto :goto_8b

    .line 1002
    :cond_83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preferred frequency and band are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1006
    :cond_8b
    :goto_8b
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 1007
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 1008
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 1009
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 1010
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPccModeConnectionType:I

    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmPccModeConnectionType(Landroid/net/wifi/p2p/WifiP2pConfig;I)V

    .line 1011
    const/4 v2, 0x0

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 1012
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    if-lez v2, :cond_b1

    .line 1013
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    goto :goto_b9

    .line 1014
    :cond_b1
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    if-lez v2, :cond_b9

    .line 1015
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 1017
    :cond_b9
    :goto_b9
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    iput v2, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 1018
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupClientIpProvisioningMode:I

    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmGroupClientIpProvisioningMode(Landroid/net/wifi/p2p/WifiP2pConfig;I)V

    .line 1019
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mJoinExistingGroup:Z

    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmJoinExistingGroup(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 1020
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    if-eqz v2, :cond_d8

    .line 1021
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    invoke-static {v0, v2}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmPairingBootstrappingConfig(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;)V

    .line 1022
    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmGroupClientIpProvisioningMode(Landroid/net/wifi/p2p/WifiP2pConfig;I)V

    .line 1024
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x4

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 1026
    :cond_d8
    iget-boolean v1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mIsAuthorizeConnectionFromPeerEnabled:Z

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmIsAuthorizeConnectionFromPeerEnabled(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 1027
    return-object v0
.end method

.method public whitelist enablePersistentMode(Z)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 3
    .param p1, "persistent"    # Z

    .line 837
    if-eqz p1, :cond_6

    .line 838
    const/4 v0, -0x2

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    goto :goto_9

    .line 840
    :cond_6
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetId:I

    .line 842
    :goto_9
    return-object p0
.end method

.method public whitelist setAuthorizeConnectionFromPeerEnabled(Z)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 2
    .param p1, "enabled"    # Z

    .line 966
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mIsAuthorizeConnectionFromPeerEnabled:Z

    .line 967
    return-object p0
.end method

.method public whitelist setDeviceAddress(Landroid/net/MacAddress;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 3
    .param p1, "deviceAddress"    # Landroid/net/MacAddress;

    .line 632
    if-nez p1, :cond_7

    .line 633
    sget-object v0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->MAC_ANY_ADDRESS:Landroid/net/MacAddress;

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    goto :goto_9

    .line 635
    :cond_7
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mDeviceAddress:Landroid/net/MacAddress;

    .line 637
    :goto_9
    return-object p0
.end method

.method public whitelist setGroupClientIpProvisioningMode(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 4
    .param p1, "groupClientIpProvisioningMode"    # I

    .line 884
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastT()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 888
    packed-switch p1, :pswitch_data_1e

    .line 894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid constant for the group client IP provisioning mode!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 891
    :pswitch_11
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupClientIpProvisioningMode:I

    .line 892
    nop

    .line 897
    return-object p0

    .line 885
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPv6 link-local provisioning not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public whitelist setGroupOperatingBand(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 4
    .param p1, "band"    # I

    .line 775
    if-eqz p1, :cond_20

    const/4 v0, 0x1

    if-eq v0, p1, :cond_20

    const/4 v0, 0x2

    if-eq v0, p1, :cond_20

    .line 778
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x3

    if-ne v0, p1, :cond_18

    goto :goto_20

    .line 782
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid constant for the group operating band!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :cond_20
    :goto_20
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingBand:I

    .line 785
    return-object p0
.end method

.method public whitelist setGroupOperatingFrequency(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 4
    .param p1, "frequency"    # I

    .line 817
    if-ltz p1, :cond_5

    .line 821
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mGroupOperatingFrequency:I

    .line 822
    return-object p0

    .line 818
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid group operating frequency!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setJoinExistingGroup(Z)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 2
    .param p1, "join"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 918
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mJoinExistingGroup:Z

    .line 919
    return-object p0
.end method

.method public whitelist setNetworkName(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 4
    .param p1, "networkName"    # Ljava/lang/String;

    .line 659
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 663
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_26

    .line 668
    :try_start_11
    const-string v0, "^DIRECT-[a-zA-Z0-9]{2}.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 674
    goto :goto_23

    .line 669
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "network name must starts with the prefix DIRECT-xy."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .end local p1    # "networkName":Ljava/lang/String;
    throw v0
    :try_end_22
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_11 .. :try_end_22} :catch_22

    .line 672
    .restart local p0    # "this":Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .restart local p1    # "networkName":Ljava/lang/String;
    :catch_22
    move-exception v0

    .line 675
    :goto_23
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mNetworkName:Ljava/lang/String;

    .line 676
    return-object p0

    .line 664
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "network name exceeds 32 bytes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "network name must be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPairingBootstrappingConfig(Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 3
    .param p1, "config"    # Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    .line 934
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 937
    const-string v0, "config cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 938
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPairingBootstrappingConfig:Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    .line 939
    return-object p0

    .line 935
    :cond_e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist setPassphrase(Ljava/lang/String;)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 4
    .param p1, "passphrase"    # Ljava/lang/String;

    .line 696
    const-string v0, "passphrase cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 697
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 701
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x80

    if-gt v0, v1, :cond_16

    .line 705
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPassphrase:Ljava/lang/String;

    .line 706
    return-object p0

    .line 702
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The length of a passphrase must be less than 128"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "passphrase must be non-empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPccModeConnectionType(I)Landroid/net/wifi/p2p/WifiP2pConfig$Builder;
    .registers 4
    .param p1, "connectionType"    # I

    .line 722
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 725
    packed-switch p1, :pswitch_data_1c

    .line 732
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid constant for the PCC Mode connection type!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 729
    :pswitch_11
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pConfig$Builder;->mPccModeConnectionType:I

    .line 730
    nop

    .line 735
    return-object p0

    .line 723
    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method
