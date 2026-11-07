.class Landroid/net/wifi/p2p/WifiP2pDirInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pDirInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDirInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pDirInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDirInfo;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 138
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDirInfo;

    sget-object v1, Landroid/net/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MacAddress;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pDirInfo;-><init>(Landroid/net/MacAddress;[B[B)V

    .line 138
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

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDirInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDirInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/WifiP2pDirInfo;
    .registers 3
    .param p1, "size"    # I

    .line 143
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDirInfo;

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

    .line 136
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDirInfo$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDirInfo;

    move-result-object p1

    return-object p1
.end method
