.class Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse$1;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .local v0, "serviceProtocolType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 118
    .local v1, "ssi":[B
    new-instance v2, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    invoke-direct {v2, v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;-><init>(I[B)V

    return-object v2
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

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    .registers 3
    .param p1, "size"    # I

    .line 122
    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

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

    .line 114
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    move-result-object p1

    return-object p1
.end method
