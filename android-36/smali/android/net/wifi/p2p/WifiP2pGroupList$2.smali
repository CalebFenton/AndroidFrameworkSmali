.class Landroid/net/wifi/p2p/WifiP2pGroupList$2;
.super Ljava/lang/Object;
.source "WifiP2pGroupList.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pGroupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/WifiP2pGroupList;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 256
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroupList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroupList;-><init>()V

    .line 258
    .local v0, "grpList":Landroid/net/wifi/p2p/WifiP2pGroupList;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 259
    .local v1, "deviceCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_19

    .line 260
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v0, v3}, Landroid/net/wifi/p2p/WifiP2pGroupList;->add(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 262
    .end local v2    # "i":I
    :cond_19
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

    .line 254
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;
    .registers 3
    .param p1, "size"    # I

    .line 266
    new-array v0, p1, [Landroid/net/wifi/p2p/WifiP2pGroupList;

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

    .line 254
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/WifiP2pGroupList$2;->newArray(I)[Landroid/net/wifi/p2p/WifiP2pGroupList;

    move-result-object p1

    return-object p1
.end method
