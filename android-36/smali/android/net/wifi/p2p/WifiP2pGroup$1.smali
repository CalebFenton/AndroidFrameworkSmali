.class Landroid/net/wifi/p2p/WifiP2pGroup$1;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pGroup;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 595
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup;-><init>()V

    .line 596
    .local v0, "group":Landroid/net/wifi/p2p/WifiP2pGroup;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkName(Ljava/lang/String;)V

    .line 597
    const-class v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 598
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 597
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pGroup;->setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 599
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setIsGroupOwner(Z)V

    .line 600
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 601
    .local v1, "clientCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    if-ge v2, v1, :cond_40

    .line 602
    const-class v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 603
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 602
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 601
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 605
    .end local v2    # "i":I
    :cond_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setPassphrase(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setInterface(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setNetworkId(I)V

    .line 608
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v2

    if-eqz v2, :cond_68

    .line 609
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setSecurityType(I)V

    .line 611
    :cond_68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setFrequency(I)V

    .line 612
    invoke-static {}, Lcom/android/wifi/x/com/android/modules/utils/build/SdkLevel;->isAtLeastV()Z

    move-result v2

    if-eqz v2, :cond_7c

    .line 613
    invoke-static {p1}, Landroid/net/wifi/ParcelUtil;->readOuiKeyedDataList(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/p2p/WifiP2pGroup;->setVendorData(Ljava/util/List;)V

    .line 615
    :cond_7c
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

    .line 593
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 3
    .param p1, "size"    # I

    .line 619
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroup;

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

    .line 593
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroup$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroup;

    move-result-object p1

    return-object p1
.end method
