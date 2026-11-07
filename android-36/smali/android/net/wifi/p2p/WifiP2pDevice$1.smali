.class Landroid/net/wifi/p2p/WifiP2pDevice$1;
.super Ljava/lang/Object;
.source "WifiP2pDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 680
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 683
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 684
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 686
    const-class v1, Landroid/net/MacAddress;

    .line 687
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->-$$Nest$fputmInterfaceMacAddress(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/MacAddress;)V

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3d

    .line 690
    :try_start_27
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->-$$Nest$fputmIpAddress(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/net/InetAddress;)V
    :try_end_32
    .catch Ljava/net/UnknownHostException; {:try_start_27 .. :try_end_32} :catch_33

    .line 694
    goto :goto_3d

    .line 691
    :catch_33
    move-exception v1

    .line 692
    .local v1, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 693
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    return-object v2

    .line 696
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :cond_3d
    :goto_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->primaryDeviceType:Ljava/lang/String;

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->secondaryDeviceType:Ljava/lang/String;

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsConfigMethodsSupported:I

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceCapability:I

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->groupCapability:I

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_71

    .line 703
    sget-object v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    .line 705
    :cond_71
    sget-object v1, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->-$$Nest$fputmVendorElements(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/util/List;)V

    .line 707
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->-$$Nest$fputmVendorData(Landroid/net/wifi/p2p/WifiP2pDevice;Ljava/util/List;)V

    .line 708
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/WifiP2pDevice;->-$$Nest$fputmPairingBootstrappingMethods(Landroid/net/wifi/p2p/WifiP2pDevice;I)V

    .line 709
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

    .line 680
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;
    .registers 3
    .param p1, "size"    # I

    .line 714
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDevice;

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

    .line 680
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object p1

    return-object p1
.end method
