.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .local v1, "servType":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, "length":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 365
    .local v3, "transId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 366
    .local v4, "query":Ljava/lang/String;
    const/4 v0, 0x0

    .line 367
    .local v0, "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    const/4 v5, 0x0

    .line 368
    .local v5, "usdSessionId":I
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v6

    if-eqz v6, :cond_32

    .line 369
    const-class v6, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 370
    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 369
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;

    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move v6, v5

    move-object v5, v0

    goto :goto_34

    .line 373
    :cond_32
    move v6, v5

    move-object v5, v0

    .end local v0    # "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .local v5, "config":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;
    .local v6, "usdSessionId":I
    :goto_34
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;-><init>(IIILjava/lang/String;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceConfig;ILandroid/net/wifi/p2p/nsd/WifiP2pServiceRequest-IA;)V

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

    .line 360
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;
    .registers 3
    .param p1, "size"    # I

    .line 377
    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

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

    .line 360
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;

    move-result-object p1

    return-object p1
.end method
