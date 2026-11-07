.class Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$1;
.super Ljava/lang/Object;
.source "WifiP2pUsdBasedServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 153
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;-><init>()V

    .line 154
    .local v0, "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->-$$Nest$fputmServiceProtocolType(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;I)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->-$$Nest$fputmServiceName(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;->-$$Nest$fputmServiceSpecificInfo(Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;[B)V

    .line 157
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

    .line 151
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .registers 3
    .param p1, "size"    # I

    .line 161
    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

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

    .line 151
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    move-result-object p1

    return-object p1
.end method
