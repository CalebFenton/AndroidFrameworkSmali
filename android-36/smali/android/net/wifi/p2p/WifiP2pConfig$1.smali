.class Landroid/net/wifi/p2p/WifiP2pConfig$1;
.super Ljava/lang/Object;
.source "WifiP2pConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 556
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 557
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 558
    const-class v1, Landroid/net/wifi/WpsInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WpsInfo;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->netId:I

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->networkName:Ljava/lang/String;

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->passphrase:Ljava/lang/String;

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmPccModeConnectionType(Landroid/net/wifi/p2p/WifiP2pConfig;I)V

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerBand:I

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmGroupClientIpProvisioningMode(Landroid/net/wifi/p2p/WifiP2pConfig;I)V

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmJoinExistingGroup(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 567
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmVendorData(Landroid/net/wifi/p2p/WifiP2pConfig;Ljava/util/List;)V

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmGroupOwnerVersion(Landroid/net/wifi/p2p/WifiP2pConfig;I)V

    .line 569
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 570
    const-class v1, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    .line 571
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 570
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmPairingBootstrappingConfig(Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pPairingBootstrappingConfig;)V

    .line 573
    :cond_75
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pConfig;->-$$Nest$fputmIsAuthorizeConnectionFromPeerEnabled(Landroid/net/wifi/p2p/WifiP2pConfig;Z)V

    .line 574
    return-object v0
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 554
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfig;
    .registers 3
    .param p1, "size"    # I

    .line 578
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 554
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pConfig$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object p1

    return-object p1
.end method
