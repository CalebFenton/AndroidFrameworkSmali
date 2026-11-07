.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .registers 7
    .param p1, "in"    # Landroid/os/Parcel;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v0, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 299
    const/4 v1, 0x0

    .line 300
    .local v1, "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    const/4 v2, 0x0

    .line 301
    .local v2, "usdSessionId":I
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 302
    const-class v3, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 303
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 302
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 306
    :cond_27
    new-instance v3, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;-><init>(Ljava/util/List;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;ILandroid/net/wifi/p2p/nsd/WifiP2pServiceInfo-IA;)V

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

    .line 295
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;
    .registers 3
    .param p1, "size"    # I

    .line 309
    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

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

    .line 295
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;

    move-result-object p1

    return-object p1
.end method
