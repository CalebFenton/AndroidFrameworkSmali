.class Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;
.super Ljava/lang/Object;
.source "WifiP2pServiceResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 444
    .local v1, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 445
    .local v2, "status":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 446
    .local v3, "transId":I
    const-class v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 447
    .local v4, "dev":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 448
    .local v6, "len":I
    const/4 v0, 0x0

    .line 449
    .local v0, "data":[B
    if-lez v6, :cond_27

    .line 450
    new-array v0, v6, [B

    .line 451
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    move-object v5, v0

    goto :goto_28

    .line 449
    :cond_27
    move-object v5, v0

    .line 453
    .end local v0    # "data":[B
    .local v5, "data":[B
    :goto_28
    const/4 v0, 0x0

    .line 454
    .local v0, "usdServResponse":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    const/4 v7, 0x0

    .line 455
    .local v7, "usdSessionId":I
    invoke-static {}, Landroid/net/wifi/util/Environment;->isSdkAtLeastB()Z

    move-result v8

    if-eqz v8, :cond_4a

    invoke-static {}, Lcom/android/wifi/x/com/android/wifi/flags/Flags;->wifiDirectR2()Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 456
    const-class v8, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    .line 457
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    .line 456
    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    move v8, v7

    move-object v7, v0

    goto :goto_4c

    .line 460
    :cond_4a
    move v8, v7

    move-object v7, v0

    .end local v0    # "usdServResponse":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    .local v7, "usdServResponse":Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;
    .local v8, "usdSessionId":I
    :goto_4c
    const/4 v0, 0x1

    if-ne v1, v0, :cond_54

    .line 461
    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    move-result-object v0

    return-object v0

    .line 462
    :cond_54
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5c

    .line 463
    invoke-static {v2, v3, v4, v5}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;->newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceResponse;

    move-result-object v0

    return-object v0

    .line 464
    :cond_5c
    if-eqz v7, :cond_64

    .line 465
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct {v0, v4, v7, v8}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;Landroid/net/wifi/p2p/nsd/WifiP2pUsdBasedServiceResponse;I)V

    return-object v0

    .line 467
    :cond_64
    new-instance v0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

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

    .line 441
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
    .registers 3
    .param p1, "size"    # I

    .line 470
    new-array v0, p1, [Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

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

    .line 441
    invoke-virtual {p0, p1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$1;->newArray(I)[Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;

    move-result-object p1

    return-object p1
.end method
