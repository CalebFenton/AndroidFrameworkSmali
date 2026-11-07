.class Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$1;
.super Ljava/lang/Object;
.source "WifiP2pDiscoveryConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 139
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;-><init>(Landroid/os/Parcel;)V

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

    .line 137
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;
    .registers 3
    .param p1, "size"    # I

    .line 143
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;

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

    .line 137
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig$1;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pDiscoveryConfig;

    move-result-object p1

    return-object p1
.end method
