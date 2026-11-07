.class Landroid/net/wifi/WifiNetworkAgentSpecifier$1;
.super Ljava/lang/Object;
.source "WifiNetworkAgentSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiNetworkAgentSpecifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/WifiNetworkAgentSpecifier;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkAgentSpecifier;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 79
    .local v0, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 80
    .local v1, "band":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 81
    .local v2, "matchLocalOnlySpecifiers":Z
    new-instance v3, Landroid/net/wifi/WifiNetworkAgentSpecifier;

    invoke-direct {v3, v0, v1, v2}, Landroid/net/wifi/WifiNetworkAgentSpecifier;-><init>(Landroid/net/wifi/WifiConfiguration;IZ)V

    return-object v3
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

    .line 75
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/WifiNetworkAgentSpecifier;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/WifiNetworkAgentSpecifier;
    .registers 3
    .param p1, "size"    # I

    .line 87
    new-array v0, p1, [Landroid/net/wifi/WifiNetworkAgentSpecifier;

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

    .line 75
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiNetworkAgentSpecifier$1;->newArray(I)[Landroid/net/wifi/WifiNetworkAgentSpecifier;

    move-result-object p1

    return-object p1
.end method
